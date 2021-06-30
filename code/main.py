import os
import sys
import time
import numpy as np
import tensorflow as tf
from tensorflow import keras
os.environ['PYGAME_HIDE_SUPPORT_PROMPT'] = "hide"
import pygame
from pygame.locals import *

BLACK = (0, 0, 0)
WHITE = (255, 255, 255)
RED = (255, 0, 0)
GREEN = (0, 255, 0)
BLUE = (0, 0, 255)
WIDTH = 1000
HEIGHT = 700
SPACING = 10
IMG_SHAPE = (128, 128, 3)
NUM_SLIDERS = 20
LATENT_SIZE = 200
NN_DELAY = 0.1


class Drawable:
    def __init__(self, screen, rect, color=BLACK, width=3, text=None):
        self.screen = screen
        self.rect = rect
        self.color = color
        self.border = width
        self.text = text

    def draw_rect(self):
        draw_rect(self.screen, self.rect, self.color, self.border)
        if self.text is not None:
            draw_text(self.screen, self.rect[0], self.rect[1], self.text)

    def draw(self):
        self.draw_rect()


class FaceArea(Drawable):
    def __init__(self, screen, rect, img=None, color=BLACK, width=3):
        super().__init__(screen, rect, color, width)
        self.img = img

    def set_img(self, img):
        self.img = img

    """
    def draw_image(self):
        x, y, w, h = self.rect
        shrink_factor = 1
        box_width = w / IMG_SHAPE[0]
        box_height = h / IMG_SHAPE[1]
        for j, row in enumerate(self.img):
            for i, col in enumerate(row):
                if j % shrink_factor == 0 and i % shrink_factor == 0:
                    draw_rect(self.screen, [x + i * box_width, y + j * box_height, box_width * shrink_factor, box_height * shrink_factor], col)
    """
    def draw_image(self):
        image_surface = pygame.surfarray.make_surface(np.array(self.img))
        rotated = pygame.transform.rotate(image_surface, -90)
        bigger = pygame.transform.scale(rotated, (self.rect[2], self.rect[3]))
        self.screen.blit(bigger, (self.rect[0], self.rect[1]))

    def draw(self):
        self.draw_rect()
        if self.img is not None:
            self.draw_image()


class Slider(Drawable):
    def __init__(self, screen, rect, axis, slider_range):
        super().__init__(screen, rect)
        self.val = 2 * slider_range * np.random.random() - slider_range
        self.range = slider_range
        self.mid = (rect[0] + rect[2] / 2, rect[1] + rect[3] / 2)
        self.spacing = rect[3] / 8
        self.slider_height = 4
        self.axis = axis

    def draw_bar(self, v, height):
        draw_rect(self.screen, [self.rect[0], self.mid[1] - height -
                                v / self.range * (self.rect[3] - self.spacing) / 2,
                                self.rect[2], height])

    def draw(self):
        draw_rect(self.screen, self.rect, GREEN)
        draw_rect(self.screen, [self.mid[0], self.rect[1], 1, self.rect[3]])
        self.draw_bar(self.val, height=self.slider_height)
        self.draw_bar(self.range, height=1)
        self.draw_bar(-self.range, height=1)

    def click(self, mouse):
        if mouse_in(mouse, self.rect):
            self.val = - self.range * (mouse[1] - self.rect[1] - self.rect[3] / 2) / (self.rect[3] / 2 - self.spacing)
            self.val = self.range if self.val > self.range else self.val
            self.val = - self.range if self.val < - self.range else self.val
            self.draw()
            return True
        return False


class SliderComposite:
    def __init__(self, sliders):
        self.sliders = sliders

    def draw(self):
        for slider in self.sliders:
            slider.draw()

    def click(self, mouse_pos):
        clicked = False
        for slider in self.sliders:
            clicked = slider.click([int(mouse_pos[0]), int(mouse_pos[1])]) or clicked
        return clicked


    def sum(self, sum):
        for slider in self.sliders:
            sum += slider.axis * slider.val
        return sum


def mouse_in(mouse, rect):
    return mouse[0] in range(rect[0], rect[0] + rect[2]) and mouse[1] in range(rect[1], rect[1] + rect[3])


def draw_rect(surface, rect, color=BLACK, width=0):
    pygame.draw.rect(surface, color, rect, width)


def draw_text(surface, x, y, text, color=BLACK):
    font = pygame.font.SysFont('Arial', 30)
    surface.blit(font.render(text, False, color), (x, y))


def init_sliders(screen, rect, axises, values):
    x, y, w, h = rect
    sliders_per_row = 2
    slider_width = w / sliders_per_row
    slider_height = h / NUM_SLIDERS * sliders_per_row
    slider_spacing = 5
    sliders = []
    for i in range(NUM_SLIDERS):
        slider_x = x + (i % sliders_per_row) * slider_width
        slider_y = y + i // sliders_per_row * slider_height
        axis = axises[i]
        slider_range = values[i] / 2
        sliders.append(Slider(screen, [int(slider_x), int(slider_y),
                                       int(slider_width - slider_spacing), int(slider_height - slider_spacing)],
                              axis, slider_range))
    return sliders


def init_screen_components(screen, eigenvalues, eigenvectors):
    face_component = FaceArea(screen, [250, SPACING, 512, 512], img=[[BLUE, GREEN], [WHITE, RED], [RED, BLUE]], color=RED, width=3)
    label_component = Drawable(screen, [250, 512 + 2 * SPACING, 512, HEIGHT - 512 - 3 * SPACING], color=RED, width=3,
                               text="Some labels here")
    if eigenvalues is None:
        axises = []
        values = []
        for i in range(NUM_SLIDERS):
            axis = np.zeros(LATENT_SIZE)
            axis[i] = 1
            axises.append(axis)
            values.append(1)
    else:
        axises = eigenvectors[:NUM_SLIDERS]
        values = eigenvalues[:NUM_SLIDERS]
    sliders = init_sliders(screen, [SPACING, SPACING, 250 - 2 * SPACING, HEIGHT - 2 * SPACING], axises, values)
    sliders_component = SliderComposite(sliders)
    buttons_component = Drawable(screen,
                                 [250 + 512 + SPACING, SPACING, WIDTH - 250 - 512 - 2 * SPACING, HEIGHT - 2 * SPACING],
                                 color=BLUE, width=3, text="Buttons")

    return [face_component, label_component, sliders_component, buttons_component]


def draw_components(screen, components):
    screen.fill(WHITE)
    for component in components:
        component.draw()


def init_display(eigenvalues, eigenvectors):
    use_eigens = True
    pygame.init()
    pygame.font.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("Face Viewer")
    screen_components = init_screen_components(screen, eigenvalues if use_eigens else None, eigenvectors if use_eigens else None)  # face, label, sliders, buttons
    draw_components(screen, screen_components)
    return screen, screen_components


def load_eigen_stuff():
    eigen_path = os.path.join(os.getcwd(), os.path.pardir, "resources", "eigens", "")
    if os.path.exists(eigen_path):
        eigenvalues = np.load(os.path.join(eigen_path, "eigenvalues.npy"))
        eigenvectors = np.load(os.path.join(eigen_path, "eigenvectors.npy"))
        eigenvectorInverses = np.linalg.pinv(eigenvectors)  # TODO why do I need this??
    else:
        raise RuntimeError
    latents_path = os.path.join(os.getcwd(), os.pardir, "resources", "latents", "")
    if os.path.exists(eigen_path):
        latents = np.load(os.path.join(latents_path, "latents_128k.npy"))
    else:
        raise RuntimeError
    return eigenvalues, eigenvectors, latents


def load_decoder():
    return keras.models.load_model(os.path.join(os.getcwd(), os.path.pardir, "resources", "decoder"))


def main():
    decoder = load_decoder()
    eigenvalues, eigenvectors, latents_128k = load_eigen_stuff()
    mean_latent = np.mean(latents_128k, axis=0)
    screen, screen_components = init_display(eigenvalues, eigenvectors)
    [face_component, label_component, sliders_component, buttons_component] = screen_components
    draw_face = True
    last_draw = 0
    while True:  # main game loop
        for event in pygame.event.get():
            if event.type == QUIT:
                pygame.quit()
                sys.exit()
        if draw_face and time.time() - last_draw > NN_DELAY:
            vector = sliders_component.sum(mean_latent.copy())
            img = decoder(np.array([vector]))[0]
            img = img * 255
            face_component.set_img(img)
            face_component.draw()
            draw_face = False
            last_draw = time.time()
        elif pygame.mouse.get_pressed(num_buttons=3)[0]:
            slider_clicked = sliders_component.click(pygame.mouse.get_pos())
            if slider_clicked:
                sliders_component.draw()
                draw_face = True

        pygame.display.update()


if __name__ == "__main__":
    main()

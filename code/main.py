import os
import sys
import time
import numpy as np
from tensorflow import keras
os.environ['PYGAME_HIDE_SUPPORT_PROMPT'] = "hide"
import pygame
from pygame.locals import *

BLACK = (0, 0, 0)
WHITE = (255, 255, 255)
RED = (255, 0, 0)
GREEN = (0, 255, 0)
BLUE = (0, 0, 255)
SPACING = 10
WIDTH = 250 + 512 + SPACING
HEIGHT = 700
IMG_SHAPE = (128, 128, 3)
NUM_SLIDERS = 20
LATENT_SIZE = 200
NN_DELAY = 0.1


class Drawable:
    """ Class to draw a box """
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
    """ The face drawing area """
    def __init__(self, screen, rect, img=None, color=BLACK, width=3):
        super().__init__(screen, rect, color, width)
        self.img = img

    def set_img(self, img):
        self.img = img

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
    """ A single slider """
    def __init__(self, screen, rect, axis, slider_range):
        super().__init__(screen, rect)
        # self.val = 2 * slider_range * np.random.random() - slider_range
        self.val = 0
        self.range = slider_range
        self.mid = (rect[0] + rect[2] / 2, rect[1] + rect[3] / 2)
        self.spacing = rect[3] / 8
        self.slider_height = 4
        self.axis = axis

    def draw_bar(self, v, height):
        """ draw a horizontal bar on the slider """
        draw_rect(self.screen, [self.rect[0], self.mid[1] - height -
                                v / self.range * (self.rect[3] - self.spacing) / 2,
                                self.rect[2], height])

    def draw(self):
        """ draw the slider """
        draw_rect(self.screen, self.rect, GREEN)  # background
        draw_rect(self.screen, [self.mid[0], self.rect[1], 1, self.rect[3]])  # middle vertical line
        self.draw_bar(self.val, height=self.slider_height)  # current value
        self.draw_bar(self.range, height=1)  # min
        self.draw_bar(-self.range, height=1)  # max

    def click(self, mouse):
        """ see (and return) if clicked, slide if so """
        if mouse_in(mouse, self.rect):
            self.val = - self.range * (mouse[1] - self.rect[1] - self.rect[3] / 2) / (self.rect[3] / 2 - self.spacing)
            self.val = self.range if self.val > self.range else self.val
            self.val = - self.range if self.val < - self.range else self.val
            self.draw()
            return True
        return False

    def set_val(self, v):
        self.val = v
        self.draw()


class SliderComposite:
    """ many sliders """
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
        """ sum over slider values """
        for slider in self.sliders:
            sum += slider.axis * slider.val
        return sum

    def set_vals(self, vals):
        for i, v in enumerate(vals):
            self.sliders[i].set_val(v)


class Button(Drawable):
    def __init__(self, screen, rect, label):
        rect = [int(v) for v in rect]
        super().__init__(screen, rect)
        self.rect[2] -= 3
        self.rect[3] -= 3
        self.label = label

    def draw(self):
        draw_rect(self.screen, self.rect, RED)
        draw_text(self.screen, self.rect[0], self.rect[1], self.label)

    def click(self, mouse):
        """ return if clicked """
        return mouse_in(mouse, self.rect)


class ButtonComposite:
    def __init__(self, buttons):
        self.buttons = buttons

    def click(self, mouse_pos):
        for button in self.buttons:
            if button.click(mouse_pos):
                return button

    def draw(self):
        for button in self.buttons:
            button.draw()


def mouse_in(mouse, rect):
    """ check if mouse position in rect """
    return mouse[0] in range(rect[0], rect[0] + rect[2]) and mouse[1] in range(rect[1], rect[1] + rect[3])


def draw_rect(surface, rect, color=BLACK, width=0):
    """ draw a rect on the surface """
    pygame.draw.rect(surface, color, rect, width)


def draw_text(surface, x, y, text, color=BLACK):
    """ draw text on the surface """
    font = pygame.font.SysFont('Arial', 30)
    surface.blit(font.render(text, False, color), (x, y))


def init_sliders(screen, rect, axises, values):
    """ generate sliders """
    x, y, w, h = rect
    sliders_per_row = 2
    slider_width = w / sliders_per_row
    slider_height = h / NUM_SLIDERS * sliders_per_row
    slider_spacing = 5  # space between sliders
    sliders = []
    for i in range(NUM_SLIDERS):
        slider_x = x + (i % sliders_per_row) * slider_width
        slider_y = y + i // sliders_per_row * slider_height
        axis = axises[i]
        slider_range = values[i]
        sliders.append(Slider(screen, [int(slider_x), int(slider_y),
                                       int(slider_width - slider_spacing), int(slider_height - slider_spacing)],
                              axis, slider_range))
    return sliders


def init_screen_components(screen, eigenvalues, eigenvectors):
    """ initialise components on screen """
    face_component = FaceArea(screen, [250, SPACING, 512, 512], img=[[BLUE, GREEN], [WHITE, RED], [RED, BLUE]],
                              color=RED, width=3)
    buttons = [
        Button(screen, [250, 512 + 2 * SPACING, 512 / 3, HEIGHT - 512 - 3 * SPACING], "Mean"),
        Button(screen, [250 + 512 / 3, 512 + 2 * SPACING, 512 / 3, HEIGHT - 512 - 3 * SPACING], "Random"),
        Button(screen, [250 + 2 * 512 / 3, 512 + 2 * SPACING, 512 / 3, HEIGHT - 512 - 3 * SPACING], "Quit")
    ]
    button_component = ButtonComposite(buttons)
    if eigenvalues is None:
        # use ijk axis
        axises = []
        values = []
        for i in range(NUM_SLIDERS):
            axis = np.zeros(LATENT_SIZE)
            axis[i] = 1
            axises.append(axis)
            values.append(1)
    else:
        # use eigenvectors as axis, with magnitudes of the eigenvalues
        axises = eigenvectors[:NUM_SLIDERS]
        values = eigenvalues[:NUM_SLIDERS]
    sliders = init_sliders(screen, [SPACING, SPACING, 250 - 2 * SPACING, HEIGHT - 2 * SPACING], axises, values)
    sliders_component = SliderComposite(sliders)

    return [face_component, button_component, sliders_component]


def draw_components(screen, components):
    """ draw the components on the screen """
    screen.fill(WHITE)
    for component in components:
        component.draw()


def init_display(eigenvalues, eigenvectors):
    """ initialise the display """
    use_eigens = True
    pygame.init()
    pygame.font.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("Face Viewer")
    screen_components = init_screen_components(screen, eigenvalues if use_eigens else None,
                                               eigenvectors if use_eigens else None)  # face, buttons, sliders
    draw_components(screen, screen_components)
    return screen, screen_components


def load_eigen_stuff():
    """ load eigenvalues, eigenvectors, and the latent vectors
        saved in ./resources/{eigens,latents}/
        precomputed by the .ipynb file """
    eigen_path = os.path.join(os.getcwd(), os.path.pardir, "resources", "eigens", "")
    if os.path.exists(eigen_path):
        eigenvalues = np.load(os.path.join(eigen_path, "eigenvalues.npy"))
        eigenvectors = np.load(os.path.join(eigen_path, "eigenvectors.npy"))
    else:
        raise RuntimeError
    latents_path = os.path.join(os.getcwd(), os.pardir, "resources", "latents", "")
    if os.path.exists(eigen_path):
        latents = np.load(os.path.join(latents_path, "latents_128k.npy"))
    else:
        raise RuntimeError
    return eigenvalues, eigenvectors, latents


def load_decoder():
    """ load the trained decoder part of the autoencoder network
        saved at ./resources/decoder/
        pretrained in the .ipynb file """
    return keras.models.load_model(os.path.join(os.getcwd(), os.path.pardir, "resources", "decoder"))


def gen_random_vals(num_sliders, values):
    return [2 * values[i] * np.random.random() - values[i] for i in range(num_sliders)]


def main():
    # setup
    decoder = load_decoder()
    eigenvalues, eigenvectors, latents_128k = load_eigen_stuff()
    mean_latent = np.mean(latents_128k, axis=0)
    screen, screen_components = init_display(eigenvalues, eigenvectors)
    [face_component, button_component, sliders_component] = screen_components
    draw_face = True
    last_draw = 0

    # 'game' loop
    while True:
        # event handling
        for event in pygame.event.get():
            if event.type == QUIT:
                pygame.quit()
                sys.exit()
        # drawing a new face
        if draw_face and time.time() - last_draw > NN_DELAY:
            # forward multiply vector from slider values
            vector = sliders_component.sum(mean_latent.copy())
            img = decoder(np.array([vector]))[0]

            # draw on screen
            img = img * 255
            face_component.set_img(img)
            face_component.draw()

            # reset for next time
            draw_face = False
            last_draw = time.time()

        # mouse press check
        elif pygame.mouse.get_pressed(num_buttons=3)[0]:
            # sliders
            is_slider_clicked = sliders_component.click(pygame.mouse.get_pos())
            if is_slider_clicked:
                sliders_component.draw()
                draw_face = True
            else:
                # buttons
                button_clicked = button_component.click(pygame.mouse.get_pos())
                if button_clicked is None:
                    pass
                elif button_clicked.label == "Mean":
                    sliders_component.set_vals(np.zeros(NUM_SLIDERS))
                    draw_face = True
                elif button_clicked.label == "Random":
                    sliders_component.set_vals(gen_random_vals(NUM_SLIDERS, eigenvalues))
                    draw_face = True
                elif button_clicked.label == "Quit":
                    pygame.quit()
                    sys.exit()

        pygame.display.update()


if __name__ == "__main__":
    main()

import os
import sys
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


class Drawable:
    def __init__(self, screen, rect, color=BLACK, width=3, text=None):
        self.screen = screen
        self.rect = rect
        self.color = color
        self.border = width
        self.text = text

    def draw(self):
        draw_rect(self.screen, self.rect, self.color, self.border)
        if self.text is not None:
            draw_text(self.screen, self.rect[0], self.rect[1], self.text)


def draw_rect(surface, rect, color=BLACK, width=0):
    pygame.draw.rect(surface, color, rect, width)


def draw_text(surface, x, y, text, color=BLACK):
    font = pygame.font.SysFont('Arial', 30)
    surface.blit(font.render(text, False, color), (x, y))


def init_screen_components(screen):
    face_component = Drawable(screen, [250, SPACING, 512, 512], color=RED, width=3, text="Face goes here")
    label_component = Drawable(screen, [250, 512 + 2 * SPACING, 512, HEIGHT - 512 - 3 * SPACING], color=RED, width=3,
                               text="Some labels here")
    sliders_component = Drawable(screen, [SPACING, SPACING, 250 - 2 * SPACING, HEIGHT - 2 * SPACING], color=GREEN,
                                 width=3, text="Sliders go here")
    buttons_component = Drawable(screen,
                                 [250 + 512 + SPACING, SPACING, WIDTH - 250 - 512 - 2 * SPACING, HEIGHT - 2 * SPACING],
                                 color=BLUE, width=3, text="Buttons")

    return [face_component, label_component, sliders_component, buttons_component]


def draw_components(screen, components):
    screen.fill(WHITE)
    for component in components:
        component.draw()


def init_display():
    pygame.init()
    pygame.font.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("Face Viewer")
    screen_components = init_screen_components(screen)  # face, label, sliders, buttons
    draw_components(screen, screen_components)
    return screen, screen_components


def main():
    screen, screen_components = init_display()
    [face_component, label_component, sliders_component, buttons_component] = screen_components
    draw_face = True
    while True:  # main game loop
        for event in pygame.event.get():
            if event.type == QUIT:
                pygame.quit()
                sys.exit()
        if draw_face:
            face_component.draw()
            print("Drew a face!!")
            draw_face = False

        pygame.display.update()


if __name__ == "__main__":
    main()

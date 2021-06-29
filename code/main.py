import pygame
from pygame.locals import *
import sys

BLACK = (0, 0, 0)
WHITE = (255, 255, 255)
RED = (255, 0, 0)
GREEN = (0, 255, 0)
BLUE = (0, 0, 255)
WIDTH = 1000
HEIGHT = 700
SPACING = 10


def draw_rect(surface, rect, color=BLACK, width=0):
    pygame.draw.rect(surface, color, rect, width)


def draw_text(surface, x, y, text, color=BLACK):
    font = pygame.font.SysFont('Arial', 30)
    surface.blit(font.render(text, False, color), (x, y))


def draw_components(screen):
    screen.fill(WHITE)
    draw_rect(screen, [250, SPACING, 512, 512], color=RED, width=3)  # face draw space
    draw_text(screen, 250, SPACING, "Face goes here")

    draw_rect(screen, [250, 512 + 2 * SPACING, 512, HEIGHT - 512 - 3 * SPACING], color=RED, width=3)  # label space
    draw_text(screen, 250, 512 + 2 * SPACING, "Some kind of labelling here")

    draw_rect(screen, [SPACING, SPACING, 250 - 2 * SPACING, HEIGHT - 2 * SPACING], color=GREEN, width=3)  # sliders
    draw_text(screen, SPACING, SPACING, "Sliders go here")

    draw_rect(screen, [250 + 512 + SPACING, SPACING, WIDTH - 250 - 512 - 2 * SPACING, HEIGHT - 2 * SPACING], color=BLUE,
              width=3)  # buttons
    draw_text(screen, 250 + 512 + SPACING, SPACING, "Useful buttons")


def init_display():
    pygame.init()
    pygame.font.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("Face Viewer")
    draw_components(screen)
    return screen


def main():
    screen = init_display()
    while True:  # main game loop
        for event in pygame.event.get():
            if event.type == QUIT:
                pygame.quit()
                sys.exit()
        pygame.display.update()


if __name__ == "__main__":
    main()

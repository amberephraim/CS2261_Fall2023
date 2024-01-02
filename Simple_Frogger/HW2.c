#include "gba.h"
#include "HW2.h"
#include "colors.h"

// Functions for HW2

void drawFrog(int x, int y, int side) {
    drawRectangle(x, y, side, side, FROG_GREEN);
    drawRectangle(x + 1, y, 2, 2, WHITE);
    drawRectangle(x + side - 3, y, 2, 2, WHITE);
    drawCircle(x + side/2, y + side/2, 2, GREEN);
}

void drawLog(int x, int y) {
    drawRectangle(x, y, 15, 13, LOG_BROWN);
}

void drawLilypad(int x, int y) {
    drawCircle(x, y, 6, GREEN);
}

void drawCar(int x, int y, u16 color) {
    drawRectangle(x, y, 7, 5, color);
    drawRectangle(x + 1, y - 1, 2, 1, BLACK);
    drawRectangle(x + 5, y - 1, 2, 1, BLACK);
    drawRectangle(x + 1, y + 5, 2, 1, BLACK);
    drawRectangle(x + 5, y + 5, 2, 1, BLACK);
}

void drawTruck(int x, int y, u16 color) {
    drawRectangle(x, y, 10, 5, color);
    drawRectangle(x + 10, y, 5, 5, C_GRAY);
    drawRectangle(x + 5, y + 5, 2, 1, BLACK);
    drawRectangle(x, y + 5, 2, 1, BLACK);
    drawRectangle(x + 12, y + 5, 2, 1, BLACK);
    drawRectangle(x, y - 1, 2, 1, BLACK);
    drawRectangle(x + 12, y - 1, 2, 1, BLACK);
    drawRectangle(x + 5, y - 1, 2, 1, BLACK);
}

void drawLandscape() {
    // Landscape from top to bottom
    drawRectangle(0, 0, SCREENWIDTH, 10, BLACK); //Stats row
    drawRectangle(0, 10, SCREENWIDTH, 15, GRASS_GREEN);
    drawRectangle(0, 25, SCREENWIDTH, 45, WATER_BLUE);
    drawRectangle(0, 70, SCREENWIDTH, 15, GRASS_GREEN);
    drawRectangle(0, 85, SCREENWIDTH, 60, GRAY);
    drawRectangle(0, 145, SCREENWIDTH, 15, BLACK);
    drawRectangle(0, 147, SCREENWIDTH, 2, YELLOW);
}
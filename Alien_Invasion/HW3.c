#include "gba.h"
#include "colors.h"
#include "HW3.h"

// Draw Functions
void drawRings(RINGS rings, u16 color) {
    if (rings == HORIZONTAL) {
        eraseDiagonalRings();
        drawHorizontalRings(color);
    } else if (rings == DIAGONALH) {
        eraseHorizontalRings();
        drawDiagonalRings(color);
    } else if (rings == VERTICAL) {
        eraseDiagonalRings();
        drawVerticalRings(color);
    } else if (rings == DIAGONALV) {
        eraseVerticalRings();
        drawDiagonalRings(color);
    }
}

void drawHorizontalRings(unsigned short color) {
    drawRectangle(215 - 20, SCREENHEIGHT/2, 41, 2, color);
    drawRectangle(215 - 19, SCREENHEIGHT/2 - 2, 10, 1, color); 
    drawRectangle(215 + 10, SCREENHEIGHT/2 - 2, 10, 1, color);
    setPixel(215 - 20, SCREENHEIGHT/2 - 1, color);
    setPixel(215 + 20, SCREENHEIGHT/2 - 1, color);
}

void drawVerticalRings(unsigned short color) {
    drawRectangle(215 - 1, SCREENHEIGHT/2 - 20, 2, 41, color);
    drawRectangle(215 + 2, SCREENHEIGHT/2 - 19, 1, 10, color);
    drawRectangle(215 + 2, SCREENHEIGHT/2 + 10, 1, 10, color);
    setPixel(215 + 1, SCREENHEIGHT/2 - 20, color);
    setPixel(215 + 1, SCREENHEIGHT/2 + 20, color);
}

void drawDiagonalRings(unsigned short color) {
    drawDiagonalLineR(215 - 8, SCREENHEIGHT/2 - 10, 19, color);
    drawDiagonalLineR(215 - 11, SCREENHEIGHT/2 - 11, 23, color);
    drawDiagonalLineL(215 + 8, SCREENHEIGHT/2 - 10, 19, color);
    drawDiagonalLineL(215 + 11, SCREENHEIGHT/2 - 11, 23, color);
}

void drawAlien(int x, int y) {
    drawSemiCircleT(x, y, 4, GLASS);
    drawHorizontalLine(y, x - 4, x + 4, GRAY);
    drawHorizontalLine(y + 1, x - 3, x + 3, GRAY);
    drawHorizontalLine(y + 2, x - 1, x + 1, GRAY);
}

void drawPlayer(int x, int y, DIRECTION direction) {
    drawSemiCircleT(x, y, 5, GLASS);
    drawHorizontalLine(y, x - 5, x + 5, LIGHT_PURPLE);
    drawHorizontalLine(y + 1, x - 4, x + 4, LIGHT_PURPLE);
    drawHorizontalLine(y + 2, x - 3, x + 3, LIGHT_PURPLE);
    drawHorizontalLine(y + 3, x - 1, x + 1, LIGHT_PURPLE);
    drawVerticalLine(x, y + 4, y + 8, CROWN_YELLOW);
    drawVerticalLine(x + 1, y + 4, y + 6, ORANGE);
    drawVerticalLine(x - 1, y + 4, y + 6, ORANGE);
    drawRectangle(x - 1, y - 3, 3, 3, TEAL);
    // Laser shooter
    if (direction == LEFT) {
        drawRectangle(x - 6, y -3, 2, 3, GRAY);
    } else {
        drawRectangle(x + 5, y -3, 2, 3, GRAY);
    }
}

void drawPlayerHurt(int x, int y, DIRECTION direction) {
    drawSemiCircleT(x, y, 5, HOT_PINK);
    drawHorizontalLine(y, x - 5, x + 5, NEON_GREEN);
    drawHorizontalLine(y + 1, x - 4, x + 4, NEON_GREEN);
    drawHorizontalLine(y + 2, x - 3, x + 3, NEON_GREEN);
    drawHorizontalLine(y + 3, x - 1, x + 1, NEON_GREEN);
    drawVerticalLine(x, y + 4, y + 8, CROWN_YELLOW);
    drawVerticalLine(x + 1, y + 4, y + 6, ORANGE);
    drawVerticalLine(x - 1, y + 4, y + 6, ORANGE);
    drawRectangle(x - 1, y - 3, 3, 3, TEAL);
    // Laser shooter
    if (direction == LEFT) {
        drawRectangle(x - 6, y -3, 2, 3, GRAY);
    } else {
        drawRectangle(x + 5, y -3, 2, 3, GRAY);
    }
}
/*
void drawShootingStar(int x, int y) {
    drawRectangle(x, y, 2, 2, WHITE);
    for (int i = 0; i < 15; i++) {
        if (i == 14) {
            drawRectangle(x - i, y - i, 1, 1, DARK_BLUE);
        } else if (i == 9 | i == 13) {
            drawRectangle(x - i, y - i, 1, 1, GLOW_PURPLE);
        } else if ( i == 12 | i == 2 | i == 5 | i==10) {
        } else {
            drawRectangle(x - i, y - i, 1, 1, WHITE);
        }
    }
}

void drawSun(int x, int y) {
    drawCircle(220, 15, 5, HOT_PINK);
    drawVerticalLine(x, y + 10, y + 15, HOT_PINK);
    drawVerticalLine(x, y - 15, y - 10, HOT_PINK);
    drawHorizontalLine(y, x + 10, x + 15, HOT_PINK);
    drawHorizontalLine(y, x - 15, x -10, HOT_PINK);
    drawVerticalLine(x + 1, y + 10, y + 15, TEAL);
    drawHorizontalLine(y + 1, x + 10, x + 15, TEAL);
}
*/
void drawLaser(int x, int y) {
    drawRectangle(x - 1, y - 1, 4, 4, NEON_GREEN);
    drawRectangle(x, y, 2, 2, WHITE);
}

drawPowerup(int x, int y, u16 color) {
    drawChar(x, y, 43, color);
}
// Erase Functions

void eraseHorizontalRings() {
    drawRectangle(215 - 20, SCREENHEIGHT/2 - 2, 11, 4, BLACK);
    drawRectangle(215 + 10, SCREENHEIGHT/2 - 2, 11, 4, BLACK);
    drawRectangle(215 - 10,SCREENHEIGHT/2, 20, 2, TEAL);
}

void eraseVerticalRings() {
    drawRectangle(215 - 1, SCREENHEIGHT/2 - 20, 4, 11, BLACK);
    drawRectangle(215 - 1, SCREENHEIGHT/2 + 10, 4, 11, BLACK);
    drawRectangle(215 - 1, SCREENHEIGHT/2 - 10, 2, 20, TEAL);
}

void eraseDiagonalRings() {
    //drawRectangle(215 - 11, SCREENHEIGHT/2 - 11, 23, 30, BLACK);
    drawDiagonalLineR(215 - 8, SCREENHEIGHT/2 - 10, 19, BLACK);
    drawDiagonalLineR(215 - 11, SCREENHEIGHT/2 - 11, 23, BLACK);
    drawDiagonalLineL(215 + 8, SCREENHEIGHT/2 - 10, 19, BLACK);
    drawDiagonalLineL(215 + 11, SCREENHEIGHT/2 - 11, 23, BLACK);
    drawCircle(215, SCREENHEIGHT/2, 10, TEAL);
}
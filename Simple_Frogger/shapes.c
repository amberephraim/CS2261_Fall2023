/*
Useful Shapes
*/
#include "gba.h"

void drawHorizontalLine(int y, int x1, int x2, unsigned short color) {
    for (int i = x1; i <= x2; i++) {
        setPixel(i, y, color);
    }
}

void drawVerticalLine(int x, int y1, int y2, unsigned short color) {
    for (int i = y1; i <= y2; i++) {
        setPixel(x, i, color);
    }
}

void drawRectangle(int x, int y, int width, int height, u16 color) {
    for (int i = 0; i < width ; i++) {
        for (int j = 0; j < height; j++) {
            setPixel((x + i), (y + j), (color));
        }
    }
}

void drawCircle(int x, int y, int radius, u16 color) {
    for (int i = -radius; i <= radius; i++) {
        for( int j = -radius; j <= radius; j++) {
            if ((i * i) + (j * j) <= (radius * radius)) {
                setPixel((x + i), (y + j), color);
            }
        }
    }
}

// Bottom half
void drawSemiCircleB(int x, int y, int radius, u16 color) {
    for (int i = -radius; i <= radius; i++) {
        for( int j = 0; j <= radius; j++) {
            if ((i * i) + (j * j) <= (radius * radius)) {
                setPixel((x + i), (y + j), color);
            }
        }
    }
}

// Top half
void drawSemiCircleT(int x, int y, int radius, u16 color) {
    for (int i = -radius; i <= radius; i++) {
        for( int j = -radius; j <= 0; j++) {
            if ((i * i) + (j * j) <= (radius * radius)) {
                setPixel((x + i), (y + j), color);
            }
        }
    }
}

void drawSparseCircle(int x, int y, int radius, u16 color) {
    for (int i = -radius; i <= radius; i++) {
        for( int j = -radius; j <= radius; j++) {
            if (((i * i) + (j * j) == (radius * radius))) {
                setPixel((x + i), (y + j), color);
            }
        }
    }
}

// Upright
void drawTriangle(int x, int y, int sideLength, u16 color) {
    int count = 0;
    for (int i = 0; i < sideLength; i++) {
        drawHorizontalLine((y + count), (x - i), (x + i), color);
        count++;
    }
}

void drawTriangleD(int x, int y, int sideLength, u16 color) {
    int count = 0;
    for (int i = 0; i < sideLength; i++) {
        drawHorizontalLine((y - count), (x - i), (x + i), color);
        count++;
    }
}
# 1 "shapes.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "shapes.c"



# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
# 23 "gba.h"
extern volatile unsigned short* videoBuffer;
# 35 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 55 "gba.h"
void drawRectangle(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
void drawChar(int x, int y, char ch, unsigned short color);
void drawString(int x, int y, char *str, unsigned short color);
# 73 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;





typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 106 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 5 "shapes.c" 2



void drawHorizontalLine(int, int, int, u16);
void drawVerticalLine(int, int, int, u16);
void drawDiagonalLineL(int, int, int, u16);
void drawDiagonalLineR(int, int, int, u16);
void drawCircle(int, int, int, u16);
void drawSemiCircleB(int, int, int, u16);
void drawSemiCircleT(int, int, int, u16);
void drawSparseCircle(int, int, int, u16);
void drawTriangle(int, int, int, u16);
void drawTriangleD(int, int, int, u16);

void drawHorizontalLine(int y, int x1, int x2, unsigned short color) {
    for (int i = x1; i <= x2; i++) {
        (videoBuffer[((y) * (240) + (i))] = color);
    }
}

void drawVerticalLine(int x, int y1, int y2, unsigned short color) {
    for (int i = y1; i <= y2; i++) {
        (videoBuffer[((i) * (240) + (x))] = color);
    }
}

void drawDiagonalLineR(int x, int y, int length, unsigned short color) {
    for (int i = 0; i < length; i++) {
        (videoBuffer[((y + i) * (240) + (x + i))] = color);
    }
}

void drawDiagonalLineL(int x, int y, int length, unsigned short color) {
    for (int i = 0; i < length; i++) {
        (videoBuffer[((y + i) * (240) + (x - i))] = color);
    }
}
# 52 "shapes.c"
void drawCircle(int x, int y, int radius, u16 color) {
    for (int i = -radius; i <= radius; i++) {
        for( int j = -radius; j <= radius; j++) {
            if ((i * i) + (j * j) <= (radius * radius)) {
                (videoBuffer[(((y + j)) * (240) + ((x + i)))] = color);
            }
        }
    }
}


void drawSemiCircleB(int x, int y, int radius, u16 color) {
    for (int i = -radius; i <= radius; i++) {
        for( int j = 0; j <= radius; j++) {
            if ((i * i) + (j * j) <= (radius * radius)) {
                (videoBuffer[(((y + j)) * (240) + ((x + i)))] = color);
            }
        }
    }
}


void drawSemiCircleT(int x, int y, int radius, u16 color) {
    for (int i = -radius; i <= radius; i++) {
        for( int j = -radius; j <= 0; j++) {
            if ((i * i) + (j * j) <= (radius * radius)) {
                (videoBuffer[(((y + j)) * (240) + ((x + i)))] = color);
            }
        }
    }
}

void drawSparseCircle(int x, int y, int radius, u16 color) {
    for (int i = -radius; i <= radius; i++) {
        for( int j = -radius; j <= radius; j++) {
            if (((i * i) + (j * j) == (radius * radius))) {
                (videoBuffer[(((y + j)) * (240) + ((x + i)))] = color);
            }
        }
    }
}


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

# 1 "HW2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "HW2.c"
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
# 56 "gba.h"
void drawRectangle(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 72 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 2 "HW2.c" 2
# 1 "HW2.h" 1


typedef struct {
    int x;
    int y;
    int oldX;
} LOG;

typedef struct {
    int x;
    int y;
    int oldX;
    u16 color;
} CAR;

typedef struct {
    int x;
    int y;
    int oldX;
    u16 color;
} TRUCK;




void drawLog(int, int);
void drawFrog(int, int, int);
void drawCar(int, int, u16);
void drawTruck(int, int, u16);
void drawLandscape();
# 3 "HW2.c" 2
# 1 "colors.h" 1
# 4 "HW2.c" 2



void drawFrog(int x, int y, int side) {
    drawRectangle(x, y, side, side, 0x15A2);
    drawRectangle(x + 1, y, 2, 2, (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10));
    drawRectangle(x + side - 3, y, 2, 2, (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10));
    drawCircle(x + side/2, y + side/2, 2, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
}

void drawLog(int x, int y) {
    drawRectangle(x, y, 15, 13, 0x1530);
}

void drawLilypad(int x, int y) {
    drawCircle(x, y, 6, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
}

void drawCar(int x, int y, u16 color) {
    drawRectangle(x, y, 7, 5, color);
    drawRectangle(x + 1, y - 1, 2, 1, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(x + 5, y - 1, 2, 1, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(x + 1, y + 5, 2, 1, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(x + 5, y + 5, 2, 1, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
}

void drawTruck(int x, int y, u16 color) {
    drawRectangle(x, y, 10, 5, color);
    drawRectangle(x + 10, y, 5, 5, 0x318C);
    drawRectangle(x + 5, y + 5, 2, 1, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(x, y + 5, 2, 1, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(x + 12, y + 5, 2, 1, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(x, y - 1, 2, 1, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(x + 12, y - 1, 2, 1, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(x + 5, y - 1, 2, 1, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
}

void drawLandscape() {

    drawRectangle(0, 0, 240, 10, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(0, 10, 240, 15, 0x2B44);
    drawRectangle(0, 25, 240, 45, 0x72C4);
    drawRectangle(0, 70, 240, 15, 0x2B44);
    drawRectangle(0, 85, 240, 60, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawRectangle(0, 145, 240, 15, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(0, 147, 240, 2, (((31) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
}

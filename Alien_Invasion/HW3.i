# 1 "HW3.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "HW3.c"
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
# 2 "HW3.c" 2
# 1 "colors.h" 1
# 3 "HW3.c" 2
# 1 "HW3.h" 1

typedef enum {LEFT, RIGHT} DIRECTION;
typedef enum {SPEED, ECLIPSE, HEALTH} TYPE;
typedef enum {HORIZONTAL, DIAGONALH, DIAGONALV, VERTICAL} RINGS;

extern int lives;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int active;
} ENEMY;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int laserMAX;
    int speed;
    DIRECTION direction;
} PLAYER;

typedef struct {
    int x;
    int y;
    int oldx;
    int active;
    DIRECTION direction;
} LASER;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int active;
    TYPE type;
} POWERUP;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
} STAR;


void drawRings(RINGS, u16);
void drawHorizontalRings(unsigned short);
void drawVerticalRings(unsigned short);
void drawDiagonalRings(unsigned short);
void drawAlien(int, int);
void drawPlayer(int, int, DIRECTION);
void drawPlayerHurt(int, int, DIRECTION);
void drawLaser(int, int);
void drawPowerup(int, int, u16);
void eraseHorizontalRings();
void eraseVerticalRings();
void eraseDiagonalRings();
# 4 "HW3.c" 2


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
    drawRectangle(215 - 20, 160/2, 41, 2, color);
    drawRectangle(215 - 19, 160/2 - 2, 10, 1, color);
    drawRectangle(215 + 10, 160/2 - 2, 10, 1, color);
    (videoBuffer[((160/2 - 1) * (240) + (215 - 20))] = color);
    (videoBuffer[((160/2 - 1) * (240) + (215 + 20))] = color);
}

void drawVerticalRings(unsigned short color) {
    drawRectangle(215 - 1, 160/2 - 20, 2, 41, color);
    drawRectangle(215 + 2, 160/2 - 19, 1, 10, color);
    drawRectangle(215 + 2, 160/2 + 10, 1, 10, color);
    (videoBuffer[((160/2 - 20) * (240) + (215 + 1))] = color);
    (videoBuffer[((160/2 + 20) * (240) + (215 + 1))] = color);
}

void drawDiagonalRings(unsigned short color) {
    drawDiagonalLineR(215 - 8, 160/2 - 10, 19, color);
    drawDiagonalLineR(215 - 11, 160/2 - 11, 23, color);
    drawDiagonalLineL(215 + 8, 160/2 - 10, 19, color);
    drawDiagonalLineL(215 + 11, 160/2 - 11, 23, color);
}

void drawAlien(int x, int y) {
    drawSemiCircleT(x, y, 4, 0x7FFC);
    drawHorizontalLine(y, x - 4, x + 4, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawHorizontalLine(y + 1, x - 3, x + 3, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawHorizontalLine(y + 2, x - 1, x + 1, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
}

void drawPlayer(int x, int y, DIRECTION direction) {
    drawSemiCircleT(x, y, 5, 0x7FFC);
    drawHorizontalLine(y, x - 5, x + 5, 0x7DD4);
    drawHorizontalLine(y + 1, x - 4, x + 4, 0x7DD4);
    drawHorizontalLine(y + 2, x - 3, x + 3, 0x7DD4);
    drawHorizontalLine(y + 3, x - 1, x + 1, 0x7DD4);
    drawVerticalLine(x, y + 4, y + 8, 0x1EFE);
    drawVerticalLine(x + 1, y + 4, y + 6, 0x1DBE);
    drawVerticalLine(x - 1, y + 4, y + 6, 0x1DBE);
    drawRectangle(x - 1, y - 3, 3, 3, 0x5F67);

    if (direction == LEFT) {
        drawRectangle(x - 6, y -3, 2, 3, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    } else {
        drawRectangle(x + 5, y -3, 2, 3, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    }
}

void drawPlayerHurt(int x, int y, DIRECTION direction) {
    drawSemiCircleT(x, y, 5, 0x409D);
    drawHorizontalLine(y, x - 5, x + 5, 0x33F5);
    drawHorizontalLine(y + 1, x - 4, x + 4, 0x33F5);
    drawHorizontalLine(y + 2, x - 3, x + 3, 0x33F5);
    drawHorizontalLine(y + 3, x - 1, x + 1, 0x33F5);
    drawVerticalLine(x, y + 4, y + 8, 0x1EFE);
    drawVerticalLine(x + 1, y + 4, y + 6, 0x1DBE);
    drawVerticalLine(x - 1, y + 4, y + 6, 0x1DBE);
    drawRectangle(x - 1, y - 3, 3, 3, 0x5F67);

    if (direction == LEFT) {
        drawRectangle(x - 6, y -3, 2, 3, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    } else {
        drawRectangle(x + 5, y -3, 2, 3, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    }
}
# 112 "HW3.c"
void drawLaser(int x, int y) {
    drawRectangle(x - 1, y - 1, 4, 4, 0x33F5);
    drawRectangle(x, y, 2, 2, (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10));
}

drawPowerup(int x, int y, u16 color) {
    drawChar(x, y, 43, color);
}


void eraseHorizontalRings() {
    drawRectangle(215 - 20, 160/2 - 2, 11, 4, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(215 + 10, 160/2 - 2, 11, 4, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(215 - 10,160/2, 20, 2, 0x5F67);
}

void eraseVerticalRings() {
    drawRectangle(215 - 1, 160/2 - 20, 4, 11, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(215 - 1, 160/2 + 10, 4, 11, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(215 - 1, 160/2 - 10, 2, 20, 0x5F67);
}

void eraseDiagonalRings() {

    drawDiagonalLineR(215 - 8, 160/2 - 10, 19, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawDiagonalLineR(215 - 11, 160/2 - 11, 23, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawDiagonalLineL(215 + 8, 160/2 - 10, 19, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawDiagonalLineL(215 + 11, 160/2 - 11, 23, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawCircle(215, 160/2, 10, 0x5F67);
}

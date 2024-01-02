# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "main.c" 2
# 1 "colors.h" 1
# 4 "main.c" 2
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
# 5 "main.c" 2


void initialize();
void updateGame();
void drawGame();
void goToLose();
void goToWin();


unsigned short oldButtons;
unsigned short buttons;


int lives;
int oldLives;
int frogX;
int frogY;
int frogOldX;
int frogOldY;
int frogSide = 13;
int carWidth = 7;
int carHeight = 7;
int truckWidth = 15;
int truckHeight = 7;
int logWidth = 15;
int logHeight = 13;

LOG logs[2];
TRUCK trucks[4];
CAR cars[3];


enum STATE {GAME, WIN, LOSE} state;

int main() {
    initialize();

    while (1) {
        switch (state) {
            case GAME :
                updateGame();
                waitForVBlank();
                drawGame();
                break;
            case WIN :
                goToWin();
                break;
            case LOSE :
                goToLose();
                break;
        }
    }
    return 0;
}

void initialize() {
    mgba_open();
    (*(volatile unsigned short *)0x4000000) = ((1 << (8 + ((2) % 4)))) | ((3) & 7);
    oldButtons = 0;
    buttons = (*(volatile unsigned short *)0x04000130);
    state = GAME;

    lives = 3;
    oldLives = lives;
    frogX = 114;
    frogY = 160 - 14;
    frogOldX = frogX;
    frogOldY = frogY;


    LOG lT1 = {54, 26, 54};
    LOG lB1 = {159, 56, 54};
    logs[0] = lT1;
    logs[1] = lB1;


    TRUCK tT1 = {54, 104, 54, (((31) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10)};
    TRUCK tB1 = {54, 134, 54, (((31) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10)};
    TRUCK tT2 = {159, 104, 159, 0x59FF};
    TRUCK tB2 = {159, 134, 159, 0x59FF};
    trucks[0] = tT1;
    trucks[1] = tB1;
    trucks[2] = tT2;
    trucks[3] = tB2;


    CAR cT1 = {115, 89, 115, (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10)};
    CAR cB1 = {204, 119, 204, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10)};
    CAR cB2 = {99, 119, 99, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10)};
    cars[0] = cB1;
    cars[1] = cT1;
    cars[2] = cB2;

    drawLandscape();

    drawFrog(frogX, frogY, frogSide);

    drawRectangle(5, 1, 3, 6, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(10, 1, 3, 6, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(15, 1, 3, 6, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));

    drawLilypad(109, 47);

    for (int i = 0; i < 4; i++) {
        if (i < 2) {drawLog(logs[i].x, logs[i].y);}
        if (i < 3) {drawCar(cars[i].x, cars[i].y, cars[i].color);}
        drawTruck(trucks[i].x, trucks[i].y, trucks[i].color);
    }
}

void updateGame() {
    frogOldX = frogX;
    frogOldY = frogY;
    oldButtons = buttons;
    buttons = (*(volatile unsigned short *)0x04000130);
    oldLives = lives;


    if ((((~buttons & (1<<6)) && !(~oldButtons & (1<<6)))) && frogY > 11) {
        frogY -= 15;
    } else if ((((~buttons & (1<<7)) && !(~oldButtons & (1<<7)))) && frogY < 146) {
        frogY += 15;
    } else if ((((~buttons & (1<<5)) && !(~oldButtons & (1<<5)))) && frogX > 9) {
        frogX -= 15;
    } else if ((((~buttons & (1<<4)) && !(~oldButtons & (1<<4)))) && frogX < 219) {
        frogX += 15;
    }


    for (int i = 0; i < 4; i++) {
        if (i < 2) {
            logs[i].oldX = logs[i].x;
            if (i % 2 == 0) {
                logs[i].x -= 2;
            } else {
                logs[i].x += 2;
            }
            if (logs[i].x > 230) {
                logs[i].x = 9;
            } else if (logs[i].x < 9) {
                logs[i].x = 230;
            }
        }
        if (i < 3) {
            cars[i].oldX = cars[i].x;
            if (i % 2 == 0) {
                cars[i].x -= 1;
            } else {
                cars[i].x -= 3;
            }
            if (cars[i].x < 9) {
                cars[i].x = 230;
            }
        }
        trucks[i].oldX = trucks[i].x;
        if (i % 2 == 0) {
            trucks[i].x += 1;
        } else {
            trucks[i].x += 2;
        }
        if (trucks[i].x > 230) {
            trucks[i].x = 9;
        }
    }


    for (int i = 0; i < 4; i++) {

        if (i < 2) {
            if (collision(frogX, frogY, frogSide, frogSide, logs[i].x, logs[i].y, logWidth, logHeight)) {
                if (i % 2 == 1) {
                    frogX += 2;
                } else {
                    frogX -= 2;
                }
                if ((frogX < 9) || (frogX > 230)) {
                    frogX = 114;
                    frogY = 160 - 14;
                    lives--;
                }
            }
        }
        if (i < 3) {
            if (collision(frogX, frogY, frogSide, frogSide, cars[i].x, cars[i].y, carWidth, carHeight)) {
                frogX = 114;
                frogY = 160 - 14;
                lives--;
            }
        }
        if (collision(frogX, frogY, frogSide, frogSide, trucks[i].x, trucks[i].y, truckWidth, truckHeight)) {
            frogX = 114;
            frogY = 160 - 14;
            lives--;
        }
    }

    if ((frogY == 56 && !collision(frogX, frogY, frogSide, frogSide, logs[1].x, logs[1].y, logWidth, logHeight))
        || (frogY == 26 && !collision(frogX, frogY, frogSide, frogSide, logs[0].x, logs[0].y, logWidth, logHeight))
        || (frogY == 41 && !collision(frogX, frogY, frogSide, frogSide, 103, 41, 12, 12))) {
        frogX = 114;
        frogY = 160 - 14;
        lives--;
    }
}

void drawGame() {

    if (lives == 0) {
        goToLose();
    } else if (frogY == 11) {
        goToWin();
    } else {

        if (oldLives != lives) {
            drawRectangle(5, 1, 13, 6, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
            for (int i = 1; i <= lives; i++) {
                drawRectangle(5 * i, 1, 3, 6, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
            }
        }

        if (frogOldX != frogX || frogOldY != frogX) {
            if (frogOldY == 146) {
                drawRectangle(frogOldX, frogOldY, frogSide, frogSide, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
                drawRectangle(frogOldX, frogOldY + 1, frogSide, 2, (((31) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
            } else if (frogOldY >= 86) {
                drawRectangle(frogOldX, frogOldY, frogSide, frogSide, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
            } else if (frogOldY == 71 || frogOldY == 11) {
                drawRectangle(frogOldX, frogOldY, frogSide, frogSide, 0x2B44);
            } else if (frogOldY >= 26) {
                drawRectangle(frogOldX, frogOldY, frogSide, frogSide, 0x72C4);
            }
        }

        for (int i = 0; i < 4; i++) {
            if (i < 2) {drawRectangle(logs[i].oldX, logs[i].y, logWidth, logHeight, 0x72C4);}
            if (i < 3) {drawRectangle(cars[i].oldX, cars[i].y - 1, carWidth, carHeight, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));}
            drawRectangle(trucks[i].oldX, trucks[i].y - 1, truckWidth, truckHeight, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
        }

        for (int i = 0; i < 4; i++) {
            if (i < 2) {drawLog(logs[i].x, logs[i].y);}
            if (i < 3) {drawCar(cars[i].x, cars[i].y, cars[i].color); }
            drawTruck(trucks[i].x, trucks[i].y, trucks[i].color);
        }
        if (frogOldY == 41) {
            drawLilypad(109, 47);
        }
        drawFrog(frogX, frogY, frogSide);
    }
}

void goToLose() {
    state = LOSE;
    fillScreen((((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
}

void goToWin() {
    state = WIN;
    fillScreen((((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
}

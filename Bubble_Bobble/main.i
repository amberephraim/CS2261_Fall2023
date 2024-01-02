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
typedef void (*ihp)(void);






extern volatile unsigned short *videoBuffer;
# 48 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 67 "gba.h"
extern unsigned short oldButtons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 98 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 2 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "main.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];

struct attr0 {
  u16 regular;
  u16 affine;
  u16 hide;
  u16 double_affine;
  u16 enable_alpha;
  u16 enable_window;
  u16 enable_mosaic;
  u16 fourBpp;
  u16 eightBpp;
  u16 square;
  u16 wide;
  u16 tall;
};

struct attr1 {
  u16 hflip;
  u16 vflip;
  u16 tiny;
  u16 small;
  u16 medium;
  u16 large;
};

struct oam_attrs {
  struct attr0 attr0;
  struct attr1 attr1;
};
# 93 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int timeUntilNextFrame;
    int direction;
    int isAnimating;
    int currentFrame;
    int numFrames;
    u8 oamIndex;
} SPRITE;
# 4 "main.c" 2
# 1 "print.h" 1
# 25 "print.h"
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
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 5 "main.c" 2
# 1 "game.h" 1
enum DIRECTION {LEFT, RIGHT, UP_LEFT, UP_RIGHT} direction;
enum ENEMY_TYPE {ROBOT, WIZARD, GHOST} eType;
enum FOOD {ORANGE, CORNDOG, BURGER, WATERMELON, BEER, RAMEN} food;
enum NUMBER {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE} number;

typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int timeUntilNextFrame;
    int direction;
    int isMoving;
    int currentFrame;
    int moveFrames;
    int idleFrames;
    int bubbleFrames;
    int numOfBubbles;
    int bubbleCounter;
    int lives;
    int jumpTimer;
    int damageBuffer;
    u8 oamIndex;
} PLAYER;

typedef struct {
    int eType;
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int timeUntilNextFrame;
    int direction;
    int isMoving;
    int chargeFireball;
    int fireballFrames;
    int currentFrame;
    int numFrames;
    int bubbleFrames;
    int inBubble;
    int bubbleTimer;
    int isFruit;
    int food;
    int active;
    int timer;
    u8 oamIndex;
    int jumpTimer;
} ENEMY;

typedef struct {
    int x;
    int y;
    int xVel;
    int oldX;
    int width;
    int height;
    int timer;
    int active;
    u8 oamIndex;
} BUBBLE;

typedef struct {
    int x;
    int y;
    int width;
    int height;
    int currentFrame;
    int numFrames;
    int timeUntilNextFrame;
    int dispel;
    int dispelFrames;
    int active;
    u8 oamIndex;
} FIREBALL;

typedef struct {
    int x;
    int y;
    int number;
    u8 oamIndex;
} SCORE;
# 6 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 7 "main.c" 2
# 1 "tileset.h" 1
# 21 "tileset.h"
extern const unsigned short tilesetTiles[16384];


extern const unsigned short tilesetPal[256];
# 8 "main.c" 2
# 1 "start.h" 1







extern const unsigned short startMap[1024];
# 9 "main.c" 2
# 1 "pause.h" 1







extern const unsigned short pauseMap[1024];
# 10 "main.c" 2
# 1 "win.h" 1







extern const unsigned short winMap[1024];
# 11 "main.c" 2
# 1 "lose.h" 1







extern const unsigned short loseMap[1024];
# 12 "main.c" 2
# 1 "level2.h" 1







extern const unsigned short level2Map[1024];
# 13 "main.c" 2
# 1 "level1.h" 1







extern const unsigned short level1Map[1024];
# 14 "main.c" 2


enum STATE {START, PAUSE, GAME1, GAME2, LOSE, WIN} state;


void initialize();
void goToStart();
void goToPause();
void goToLose();
void goToWin();
void goToGame1();
void game1();
void goToGame2();
void game2();


OBJ_ATTR shadowOAM[128];


PLAYER player;

SCORE hundreds;
SCORE tens;
SCORE ones;


unsigned short oldButtons;
unsigned short buttons;


int level;
int stall;
int score;

int main() {
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);
        switch(state) {
            case START:
                if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
                    goToGame1();
                }
                break;
            case PAUSE:
                if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
                    if (level == 1) {
                        goToGame1();
                    } else {
                        goToGame2();
                    }
                }
                break;
            case GAME1:
                if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
                    goToPause();
                } else {
                    game1();
                }
                break;
            case GAME2:
                if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
                    goToPause();
                } else {
                    game2();
                }
                break;
            case LOSE:
                if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
                    hideSprites();
                    goToStart();
                }
                break;
            case WIN:
                if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
                    hideSprites();
                    goToStart();
                }
                break;
        }
    }
}

void initialize() {
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x4000008) = ((0) << 2) | ((28) << 8) | (0 << 14) | (0 << 7);
    mgba_open();


    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 512/2);
    DMANow(3, spritesheetTiles, &((CB*) 0x6000000)[4], 32768/2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);


    DMANow(3, tilesetTiles, &((CB*) 0x6000000)[0], 32768/2);
    DMANow(3, tilesetPal, ((unsigned short *)0x5000000), 512/2);


    oldButtons = 0;
    buttons = (*(volatile unsigned short *)0x04000130);

    stall = 0;

    goToStart();
}

void goToStart() {

    DMANow(3, startMap, &((SB*) 0x6000000)[28], (2048)/2);

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    state = START;
}

void goToGame1() {

    DMANow(3, level1Map, &((SB*) 0x6000000)[28], (2048)/2);

    if (state == START) {
        initGame1Sprites();
    } else {

        if (player.lives < 3) {
            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (11))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (12))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (11))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (12))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (11))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (12))] = (4));
        }
        if (player.lives == 1) {
            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (9))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (10))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (9))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (10))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (9))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (10))] = (4));
        }
    }

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);


    level = 1;
    state = GAME1;

    game1();
}

void game1() {
    if (level == 2) {
        stall++;
        if (stall % 10 == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.bubbleFrames;
        }
        shadowOAM[player.oamIndex].attr0 = ((player.y) & 0xFF) | (0<<14);
        shadowOAM[player.oamIndex].attr1 = ((player.x) & 0x1FF) | (2<<14);
        shadowOAM[player.oamIndex].attr2 = ((((8) * (32) + (4 * player.currentFrame))) & 0x3FF);

        waitForVBlank();
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

        if (stall % 200 == 0) {
            hideSprites();
            goToGame2();
        }
    } else {
        updateGame1();
        if (player.lives == 0) {
            hideSprites();
            goToLose();
        } else {
            waitForVBlank();
            DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
        }
    }
}

void goToGame2() {

    DMANow(3, level2Map, &((SB*) 0x6000000)[28], (2048)/2);

    if (state == GAME1) {
        initGame2Sprites();
    } else {

        if (player.lives < 3) {
            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (11))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (12))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (11))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (12))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (11))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (12))] = (4));
        }
        if (player.lives == 1) {
            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (9))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (10))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (9))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (10))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (9))] = (4));
            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (10))] = (4));
        }
    }

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    state = GAME2;
    game2();
}

void game2() {
    if (level == 0) {
        stall++;
        if (stall % 10 == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.bubbleFrames;
        }
        shadowOAM[player.oamIndex].attr0 = ((player.y) & 0xFF) | (0<<14);
        shadowOAM[player.oamIndex].attr1 = ((player.x) & 0x1FF) | (2<<14);
        shadowOAM[player.oamIndex].attr2 = ((((8) * (32) + (4 * player.currentFrame))) & 0x3FF);

        waitForVBlank();
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

        if (stall % 200 == 0) {
            hideSprites();
            goToWin();
        }
    } else if (player.lives == 0) {
        hideSprites();
        goToLose();
    } else {
        updateGame2();
        waitForVBlank();
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    }

}

void goToPause() {

    DMANow(3, pauseMap, &((SB*) 0x6000000)[28], (2048)/2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    state = PAUSE;
}

void goToLose() {

    DMANow(3, loseMap, &((SB*) 0x6000000)[28], (2048)/2);

    shadowOAM[hundreds.oamIndex].attr0 = ((50) & 0xFF) | (2<<14);
    shadowOAM[hundreds.oamIndex].attr1 = ((109) & 0x1FF) | (0<<14);
    shadowOAM[hundreds.oamIndex].attr2 = ((((15) * (32) + (hundreds.number + 17))) & 0x3FF);

    shadowOAM[tens.oamIndex].attr0 = ((50) & 0xFF) | (2<<14);
    shadowOAM[tens.oamIndex].attr1 = ((118) & 0x1FF) | (0<<14);
    shadowOAM[tens.oamIndex].attr2 = ((((15) * (32) + (tens.number + 17))) & 0x3FF);

    shadowOAM[ones.oamIndex].attr0 = ((50) & 0xFF) | (2<<14);
    shadowOAM[ones.oamIndex].attr1 = ((127) & 0x1FF) | (0<<14);
    shadowOAM[ones.oamIndex].attr2 = ((((15) * (32) + (ones.number + 17))) & 0x3FF);
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    state = LOSE;
}

void goToWin() {

    DMANow(3, winMap, &((SB*) 0x6000000)[28], (2048)/2);

    shadowOAM[hundreds.oamIndex].attr0 = ((50) & 0xFF) | (2<<14);
    shadowOAM[hundreds.oamIndex].attr1 = ((109) & 0x1FF) | (0<<14);
    shadowOAM[hundreds.oamIndex].attr2 = ((((15) * (32) + (hundreds.number + 17))) & 0x3FF);

    shadowOAM[tens.oamIndex].attr0 = ((50) & 0xFF) | (2<<14);
    shadowOAM[tens.oamIndex].attr1 = ((118) & 0x1FF) | (0<<14);
    shadowOAM[tens.oamIndex].attr2 = ((((15) * (32) + (tens.number + 17))) & 0x3FF);

    shadowOAM[ones.oamIndex].attr0 = ((50) & 0xFF) | (2<<14);
    shadowOAM[ones.oamIndex].attr1 = ((127) & 0x1FF) | (0<<14);
    shadowOAM[ones.oamIndex].attr2 = ((((15) * (32) + (ones.number + 17))) & 0x3FF);

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    state = WIN;
}

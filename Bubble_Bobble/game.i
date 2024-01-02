# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "sprites.h" 1



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
# 5 "sprites.h" 2





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
# 2 "game.c" 2

# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 4 "game.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 5 "game.c" 2
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
# 6 "game.c" 2
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
# 7 "game.c" 2
# 1 "level1collisionmap.h" 1
# 20 "level1collisionmap.h"
extern const unsigned char level1collisionmapBitmap[38400];
# 8 "game.c" 2
# 1 "level2collisionmap.h" 1
# 20 "level2collisionmap.h"
extern const unsigned char level2collisionmapBitmap[38400];
# 9 "game.c" 2


PLAYER player;
ENEMY enemies[6];
BUBBLE bubbles[3];
SPRITE scoreAnimation;
FIREBALL fireballs[4];


SCORE hundreds;
SCORE tens;
SCORE ones;


OBJ_ATTR shadowOAM[128];


void initGame1Sprites();
void initGame2Sprites();
void updateGame1();
void updateGame2();
void updateFireball();
void updateBubbles();
void updatePlayer();
void updateScore();
unsigned char colorAt(int, int);


int enemyStall;
extern int level;
extern int score;


inline unsigned char colorAt(int x, int y) {

    if (level == 1) {
        return ((unsigned char *)level1collisionmapBitmap) [((y) * (240) + (x))];
    } else {
        return ((unsigned char *)level2collisionmapBitmap) [((y) * (240) + (x))];
    }
}

void initGame1Sprites() {


    score = 0;
    enemyStall = 0;
    player.damageBuffer = 0;
    player.jumpTimer = 0;


    hundreds.x = 173;
    hundreds.y = 6;
    hundreds.number = 0;
    hundreds.oamIndex = 15;
    tens.x = 181;
    tens.y = 6;
    tens.number = 0;
    tens.oamIndex = 16;
    ones.x = 189;
    ones.y = 6;
    ones.number = 0;
    ones.oamIndex = 17;


    player.x = 108;
    player.y = 136;
    player.xVel = 1;
    player.yVel = 1;
    player.width = 16;
    player.height = 16;
    player.timeUntilNextFrame = 10;
    player.direction = LEFT;
    player.isMoving = 0;
    player.currentFrame = 0;
    player.moveFrames = 4;
    player.idleFrames = 3;
    player.bubbleFrames = 6;
    player.numOfBubbles = 3;
    player.oamIndex = 0;
    player.bubbleCounter = 0;
    player.lives = 3;


    for (int i = 0; i < 3; i++) {
        bubbles[i].oamIndex = i + 7;
        bubbles[i].width = 14;
        bubbles[i].height = 14;
        bubbles[i].timer = 300;
        bubbles[i].active = 0;
    }


    scoreAnimation.isAnimating = 0;
    scoreAnimation.oamIndex = 10;




    enemies[0].x = 182;
    enemies[0].y = 40;
    enemies[0].direction = LEFT;

    enemies[1].x = 44;
    enemies[1].y = 40;
    enemies[1].direction = RIGHT;

    enemies[2].x = 61;
    enemies[2].y = 72;
    enemies[2].direction = RIGHT;


    enemies[3].x = 162;
    enemies[3].y = 72;
    enemies[3].direction = LEFT;


    enemies[4].x = 10;
    enemies[4].y = 103;
    enemies[4].direction = RIGHT;

    enemies[5].x = 213;
    enemies[5].y = 40;
    enemies[5].direction = LEFT;


    for (int i = 0; i < 6; i++) {
        enemies[i].xVel = 1;
        enemies[i].yVel = 1;
        enemies[i].width = 16;
        enemies[i].height = 16;
        enemies[i].timeUntilNextFrame = 20;
        enemies[i].chargeFireball = 0;
        enemies[i].isMoving = 0;
        enemies[i].currentFrame = 0;
        enemies[i].bubbleFrames = 3;
        enemies[i].oamIndex = i + 1;
        enemies[i].inBubble = 0;
        enemies[i].active = 1;
        enemies[i].isFruit = 0;
        if (i < 4) {
            enemies[i].eType = ROBOT;
            enemies[i].numFrames = 4;
        } else {
            enemies[i].eType = GHOST;
            enemies[i].numFrames = 2;
        }
    }
    enemies[5].xVel = -1;
}

void updateGame1() {
    enemyStall++;

    updatePlayer();


    updateBubbles();


    for (int i = 0; i < 6; i++) {
        if (!enemies[i].active) continue;
        int eleftX = enemies[i].x;
        int erightX = enemies[i].x + enemies[i].width - 1;
        int etopY = enemies[i].y;
        int ebottomY = enemies[i].y + enemies[i].height - 1;

        if (enemies[i].isFruit) {
            if (enemies[i].y < 137) {

                enemies[i].y++;
            }
        } else if (!enemies[i].inBubble) {
            if (enemyStall % 2 == 0) {
                if (enemies[i].eType == GHOST) {
                    enemies[i].x += enemies[i].xVel;
                    enemies[i].y += enemies[i].yVel;
                    if (enemies[i].x < 8) {
                        enemies[i].xVel = -enemies[i].xVel;
                        if (enemies[i].xVel < 0) {
                            enemies[i].direction = LEFT;
                        } else {
                            enemies[i].direction = RIGHT;
                        }
                    }
                    if (enemies[i].x > 216) {
                        enemies[i].xVel = -enemies[i].xVel;
                        if (enemies[i].xVel < 0) {
                            enemies[i].direction = LEFT;
                        } else {
                            enemies[i].direction = RIGHT;
                        }
                    }
                    if (enemies[i].y < 33) {
                        enemies[i].yVel = -enemies[i].yVel;
                    }
                    if (enemies[i].y > 136) {
                        enemies[i].yVel = -enemies[i].yVel;
                    }
                } else if (enemies[i].eType == ROBOT) {
                    if (enemies[i].jumpTimer != 0) enemies[i].jumpTimer--;
                    if (enemies[i].x < player.x) {
                        if (colorAt(erightX + enemies[i].xVel, etopY) && colorAt(erightX + enemies[i].xVel, ebottomY)) {
                            enemies[i].x += enemies[i].xVel;
                        }
                        enemies[i].direction = RIGHT;
                    } else if (enemies[i].x > player.x) {
                        if (colorAt(eleftX - enemies[i].xVel, etopY) && colorAt(eleftX - enemies[i].xVel, ebottomY)) {
                            enemies[i].x -= enemies[i].xVel;
                        }
                        enemies[i].direction = LEFT;
                    }
                    if (player.y < enemies[i].y && enemies[i].jumpTimer == 0 && enemies[i].y > 32 && (!colorAt(eleftX, ebottomY + enemies[i].yVel) || !colorAt(erightX, ebottomY + enemies[i].yVel))) {


                        enemies[i].jumpTimer = 35;
                        enemies[i].y -= enemies[i].yVel;
                    } else if (enemies[i].jumpTimer != 0 && enemies[i].y > 32) {

                        enemies[i].y -= enemies[i].yVel;
                    } else if (enemies[i].y < (160 - enemies[i].height) && colorAt(eleftX, ebottomY + enemies[i].yVel) && colorAt(erightX, ebottomY + enemies[i].yVel)) {

                        enemies[i].y += enemies[i].yVel;
                    } else if (player.y > enemies[i].y) {
                        if (enemies[i].x > 37 && enemies[i].x < 109 && player.x < enemies[i].x) {
                            enemies[i].x += 2 * enemies[i].xVel;
                            enemies[i].direction = RIGHT;
                        } else if (enemies[i].x > 110 && enemies[i].x < 193 && player.x > enemies[i].x) {
                            enemies[i].x -= 2 * enemies[i].xVel;
                            enemies[i].direction = LEFT;
                        }
                    }
                }
            }
        }

        if (collision(enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height, player.x, player.y, player.width, player.height)) {
            if (enemies[i].inBubble) {
                enemies[i].isFruit = 1;
                enemies[i].yVel = 1;
                enemies[i].y = 32;
                if (player.direction == LEFT || player.direction == UP_LEFT) {
                    enemies[i].x -= 30;
                    if (enemies[i].x < 8) {
                        enemies[i].x = 8;
                    }
                } else {
                    enemies[i].x += 30;
                    if (enemies[i].x > 216) {
                        enemies[i].x = 216;
                    }
                }

                enemies[i].food = i;
                enemies[i].bubbleTimer = 450;
                enemies[i].inBubble = 0;
            } else if (enemies[i].isFruit && enemies[i].active) {
                score += 50;
                scoreAnimation.x = enemies[i].x + 5;
                scoreAnimation.y = enemies[i].y;
                scoreAnimation.timeUntilNextFrame = 20;
                scoreAnimation.isAnimating = 1;
                enemies[i].isFruit = 0;
                enemies[i].active = 0;
            } else if (player.damageBuffer == 0) {
                player.x = 108;
                player.y = 136;
                player.damageBuffer = 50;
                player.jumpTimer = 0;
                if (player.lives == 3) {
                    (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (11))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (12))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (11))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (12))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (11))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (12))] = (4));
                } else {
                    (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (9))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (10))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (9))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (10))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (9))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (10))] = (4));
                }
                player.lives--;

            }
        }


        for (int j = 0; j < 3; j++) {
            if (bubbles[j].active && !enemies[i].inBubble && !enemies[i].isFruit && collision(enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height, bubbles[j].x, bubbles[j].y, bubbles[j].width, bubbles[j].height)) {
                enemies[i].inBubble = 1;
                enemies[i].bubbleTimer = 300;
                bubbles[j].active = 0;
                player.numOfBubbles++;
            }
        }

        if (enemies[i].inBubble) {
            enemies[i].bubbleTimer--;
            if (enemies[i].bubbleTimer == 0) {
                enemies[i].inBubble = 0;
            }
        } else if (enemies[i].isFruit) {
            enemies[i].bubbleTimer--;
            if (enemies[i].bubbleTimer == 0) {
                enemies[i].active = 0;
            }
        }


        if (!enemies[i].isFruit) {
            enemies[i].timeUntilNextFrame--;
            if (enemies[i].timeUntilNextFrame == 0) {
                enemies[i].timeUntilNextFrame = 20;
                if (enemies[i].inBubble) {
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % enemies[i].bubbleFrames;
                } else {
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % enemies[i].numFrames;
                }
            }
        }
    }


    updateShadowOAM();


    level = 2;
    for (int i = 0; i < 6; i++) {
        if (enemies[i].active) {
            level = 1;
        }
    }
    if (level == 2 && !scoreAnimation.isAnimating) {
        hideSprites();

        shadowOAM[hundreds.oamIndex].attr0 = ((hundreds.y) & 0xFF) | (2<<14);
        shadowOAM[hundreds.oamIndex].attr1 = ((hundreds.x) & 0x1FF) | (0<<14);
        shadowOAM[hundreds.oamIndex].attr2 = ((((15) * (32) + (hundreds.number + 17))) & 0x3FF);

        shadowOAM[tens.oamIndex].attr0 = ((tens.y) & 0xFF) | (2<<14);
        shadowOAM[tens.oamIndex].attr1 = ((tens.x) & 0x1FF) | (0<<14);
        shadowOAM[tens.oamIndex].attr2 = ((((15) * (32) + (tens.number + 17))) & 0x3FF);

        shadowOAM[ones.oamIndex].attr0 = ((ones.y) & 0xFF) | (2<<14);
        shadowOAM[ones.oamIndex].attr1 = ((ones.x) & 0x1FF) | (0<<14);
        shadowOAM[ones.oamIndex].attr2 = ((((15) * (32) + (ones.number + 17))) & 0x3FF);
        player.currentFrame = 0;
    }
}

void initGame2Sprites() {

    enemyStall = 0;
    player.damageBuffer = 0;
    player.jumpTimer = 0;


    player.x = 108;
    player.y = 136;
    player.direction = LEFT;




    enemies[0].x = 76;
    enemies[0].y = 40;
    enemies[0].direction = RIGHT;
    enemies[0].xVel = 1;
    enemies[0].timer = 50;

    enemies[1].x = 115;
    enemies[1].y = 72;
    enemies[1].direction = RIGHT;
    enemies[1].xVel = 1;
    enemies[1].timer = 200;

    enemies[2].x = 157;
    enemies[2].y = 104;
    enemies[2].direction = LEFT;
    enemies[2].xVel = -1;
    enemies[2].timer = 135;


    enemies[3].x = 21;
    enemies[3].y = 72;
    enemies[3].direction = RIGHT;

    enemies[4].x = 200;
    enemies[4].y = 104;
    enemies[4].direction = LEFT;


    enemies[5].x = 22;
    enemies[5].y = 38;
    enemies[5].direction = RIGHT;
    enemies[5].xVel = 1;
    enemies[5].yVel = 1;

    for (int i = 0; i < 6; i++) {
        enemies[i].active = 1;
        enemies[i].isFruit = 0;
        enemies[i].currentFrame = 0;

        if (i < 3) {
            enemies[i].eType = WIZARD;
            enemies[i].numFrames = 4;
            enemies[i].fireballFrames = 5;
        } else if (i < 5) {
            enemies[i].eType = ROBOT;
            enemies[i].numFrames = 4;
            enemies[i].xVel = 1;
            enemies[i].yVel = 1;
        } else {
            enemies[i].eType = GHOST;
            enemies[i].numFrames = 2;
        }
    }


    for (int i = 0; i < 3; i++) {
        bubbles[i].timer = 300;
        bubbles[i].active = 0;
    }


    for (int i = 0; i < 4; i++) {
        fireballs[i].active = 0;
        fireballs[i].width = 16;
        fireballs[i].height = 16;
        fireballs[i].numFrames = 4;
        fireballs[i].dispelFrames = 3;
        fireballs[i].oamIndex = i + 11;
        fireballs[i].dispel = 0;
    }


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

void updateGame2() {
    enemyStall++;


    updatePlayer();


    updateBubbles();



    for (int i = 0; i < 6; i++) {
        if (!enemies[i].active) continue;

        int eleftX = enemies[i].x;
        int erightX = enemies[i].x + enemies[i].width - 1;
        int etopY = enemies[i].y;
        int ebottomY = enemies[i].y + enemies[i].height - 1;

        if (enemies[i].isFruit) {
            if (enemies[i].y < 137) {

                enemies[i].y++;
            }
        } else if (!enemies[i].inBubble) {
            if (enemyStall % 2 == 0) {
                if (enemies[i].eType == GHOST) {
                    enemies[i].x += enemies[i].xVel;
                    enemies[i].y += enemies[i].yVel;
                    if (enemies[i].x < 17) {
                        enemies[i].xVel = -enemies[i].xVel;
                        if (enemies[i].xVel < 0) {
                            enemies[i].direction = LEFT;
                        } else {
                            enemies[i].direction = RIGHT;
                        }
                    }
                    if (enemies[i].x > 207) {
                        enemies[i].xVel = -enemies[i].xVel;
                        if (enemies[i].xVel < 0) {
                            enemies[i].direction = LEFT;
                        } else {
                            enemies[i].direction = RIGHT;
                        }
                    }
                    if (enemies[i].y < 33) {
                        enemies[i].yVel = -enemies[i].yVel;
                    }
                    if (enemies[i].y > 136) {
                        enemies[i].yVel = -enemies[i].yVel;
                    }
                } else if (enemies[i].eType == WIZARD) {
                    if (!enemies[i].chargeFireball) {
                        enemies[i].timer--;
                        enemies[i].x += enemies[i].xVel;
                        if (enemies[i].x < 71) {
                            enemies[i].xVel = -enemies[i].xVel;
                            enemies[i].direction = RIGHT;
                        }
                        if (enemies[i].x > 160) {
                            enemies[i].xVel = -enemies[i].xVel;
                            enemies[i].direction = LEFT;
                        }
                        if (enemies[i].timer == 0) {
                            enemies[i].chargeFireball = 1;
                            enemies[i].currentFrame = 0;
                            enemies[i].timer = 300;
                        }
                    }
                } else if (enemies[i].eType == ROBOT) {
                    if (enemies[i].jumpTimer != 0) enemies[i].jumpTimer--;
                    if (enemies[i].x < player.x) {
                        if (colorAt(erightX + enemies[i].xVel, etopY) && colorAt(erightX + enemies[i].xVel, ebottomY)) {
                            enemies[i].x += enemies[i].xVel;
                        }
                        enemies[i].direction = RIGHT;
                    } else if (enemies[i].x > player.x) {
                        if (colorAt(eleftX - enemies[i].xVel, etopY) && colorAt(eleftX - enemies[i].xVel, ebottomY)) {
                            enemies[i].x -= enemies[i].xVel;
                        }
                        enemies[i].direction = LEFT;
                    }
                    if (player.y < enemies[i].y && enemies[i].jumpTimer == 0 && enemies[i].y > 32 && (!colorAt(eleftX, ebottomY + enemies[i].yVel) || !colorAt(erightX, ebottomY + enemies[i].yVel))) {


                        enemies[i].jumpTimer = 35;
                        enemies[i].y -= enemies[i].yVel;
                    } else if (enemies[i].jumpTimer != 0 && enemies[i].y > 32) {

                        enemies[i].y -= enemies[i].yVel;
                    } else if (enemies[i].y < (160 - enemies[i].height) && colorAt(eleftX, ebottomY + enemies[i].yVel) && colorAt(erightX, ebottomY + enemies[i].yVel)) {

                        enemies[i].y += enemies[i].yVel;
                    }
                }
            }
        }



        if (collision(enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height, player.x, player.y, player.width, player.height)) {
            if (enemies[i].inBubble) {
                enemies[i].isFruit = 1;
                enemies[i].y = 32;
                if (player.direction == LEFT || player.direction == UP_LEFT) {
                    enemies[i].x -= 30;
                    if (enemies[i].x < 17) {
                        enemies[i].x = 17;
                    }
                } else {
                    enemies[i].x += 30;
                    if (enemies[i].x > 207) {
                        enemies[i].x = 207;
                    }
                }
                enemies[i].bubbleTimer = 450;
                enemies[i].inBubble = 0;
            } else if (enemies[i].isFruit && enemies[i].active) {
                score += 50;
                scoreAnimation.x = enemies[i].x + 5;
                scoreAnimation.y = enemies[i].y;
                scoreAnimation.timeUntilNextFrame = 20;
                scoreAnimation.isAnimating = 1;
                enemies[i].isFruit = 0;
                enemies[i].active = 0;
            } else if (player.damageBuffer == 0) {
                if (player.lives == 3) {
                    (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (11))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (12))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (11))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (12))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (11))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (12))] = (4));
                } else {
                    (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (9))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (10))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (9))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (10))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (9))] = (4));
                    (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (10))] = (4));
                }
                player.lives--;
                player.jumpTimer = 0;
                player.x = 108;
                player.y = 136;
                player.damageBuffer = 50;
            }
        }


        for (int j = 0; j < 3; j++) {
            if (bubbles[j].active && !enemies[i].inBubble && !enemies[i].isFruit && collision(enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height, bubbles[j].x, bubbles[j].y, bubbles[j].width, bubbles[j].height)) {
                enemies[i].inBubble = 1;
                enemies[i].bubbleTimer = 300;
                bubbles[j].active = 0;
                player.numOfBubbles++;
            }
        }

        if (enemies[i].inBubble) {
            enemies[i].bubbleTimer--;
            if (enemies[i].bubbleTimer == 0) {
                enemies[i].inBubble = 0;
            }
        } else if (enemies[i].isFruit) {
            enemies[i].bubbleTimer--;
            if (enemies[i].bubbleTimer == 0) {
                enemies[i].active = 0;
            }
        }


        if (!enemies[i].isFruit) {
            enemies[i].timeUntilNextFrame--;
            if (enemies[i].timeUntilNextFrame == 0) {
                enemies[i].timeUntilNextFrame = 20;
                if (enemies[i].inBubble) {
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % enemies[i].bubbleFrames;
                } else if (enemies[i].chargeFireball) {
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % enemies[i].fireballFrames;
                    if (enemies[i].currentFrame == enemies[i].fireballFrames - 1) {
                        enemies[i].chargeFireball = 0;
                        enemies[i].currentFrame = 0;
                        for (int k = 0; i < 4; k++) {
                            if (!fireballs[k].active) {
                                fireballs[k].active = 1;
                                fireballs[k].timeUntilNextFrame = 10;
                                fireballs[k].currentFrame = 0;
                                fireballs[k].x = enemies[i].x;
                                if (enemies[i].direction == RIGHT) {
                                    fireballs[k].x += enemies[i].width;
                                }
                                fireballs[k].y = enemies[i].y + enemies[i].height;
                                break;
                            }
                        }
                    }
                } else {
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % enemies[i].numFrames;
                }
            }
        }
    }


    updateFireball();


    updateShadowOAM();


    for (int i = 0; i < 4; i++) {
        if (!fireballs[i].active) {
            shadowOAM[fireballs[i].oamIndex].attr0 = (2<<8);
            continue;
        }
        shadowOAM[fireballs[i].oamIndex].attr0 = ((fireballs[i].y) & 0xFF) | (0<<14);
        shadowOAM[fireballs[i].oamIndex].attr1 = ((fireballs[i].x) & 0x1FF) | (1<<14);
        if (fireballs[i].dispel) {
            shadowOAM[fireballs[i].oamIndex].attr2 = ((((6) * (32) + (fireballs[i].currentFrame * 2 + 26))) & 0x3FF);
        } else {
            shadowOAM[fireballs[i].oamIndex].attr2 = ((((6) * (32) + (fireballs[i].currentFrame * 2 + 18))) & 0x3FF);
        }
    }


    level = 0;
    for (int i = 0; i < 6; i++) {
        if (enemies[i].active) {
            level = 2;
        }
    }
    if (level == 0) {
        hideSprites();

        shadowOAM[hundreds.oamIndex].attr0 = ((hundreds.y) & 0xFF) | (2<<14);
        shadowOAM[hundreds.oamIndex].attr1 = ((hundreds.x) & 0x1FF) | (0<<14);
        shadowOAM[hundreds.oamIndex].attr2 = ((((15) * (32) + (hundreds.number + 17))) & 0x3FF);

        shadowOAM[tens.oamIndex].attr0 = ((tens.y) & 0xFF) | (2<<14);
        shadowOAM[tens.oamIndex].attr1 = ((tens.x) & 0x1FF) | (0<<14);
        shadowOAM[tens.oamIndex].attr2 = ((((15) * (32) + (tens.number + 17))) & 0x3FF);

        shadowOAM[ones.oamIndex].attr0 = ((ones.y) & 0xFF) | (2<<14);
        shadowOAM[ones.oamIndex].attr1 = ((ones.x) & 0x1FF) | (0<<14);
        shadowOAM[ones.oamIndex].attr2 = ((((15) * (32) + (ones.number + 17))) & 0x3FF);
        player.currentFrame = 0;
    }
}

void updateFireball() {

    for (int i = 0; i < 4; i++) {
        if (fireballs[i].active) {
            if (!fireballs[i].dispel) {
                fireballs[i].y++;
                if (fireballs[i].y > 162) {
                    fireballs[i].active = 0;
                }
                if (collision(fireballs[i].x, fireballs[i].y, fireballs[i].width, fireballs[i].height, player.x, player.y, player.width, player.height)) {
                    fireballs[i].dispel = 1;
                    if (player.damageBuffer == 0) {
                        if (player.lives == 3) {
                            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (11))] = (4));
                            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (12))] = (4));
                            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (11))] = (4));
                            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (12))] = (4));
                            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (11))] = (4));
                            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (12))] = (4));
                        } else {
                            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (9))] = (4));
                            (((SB*) 0x6000000)[28].tilemap[((0) * (32) + (10))] = (4));
                            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (9))] = (4));
                            (((SB*) 0x6000000)[28].tilemap[((1) * (32) + (10))] = (4));
                            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (9))] = (4));
                            (((SB*) 0x6000000)[28].tilemap[((2) * (32) + (10))] = (4));
                        }
                        player.lives--;
                        player.jumpTimer = 0;
                        player.x = 108;
                        player.y = 136;
                        player.damageBuffer = 50;
                    }
                }
            }
            fireballs[i].timeUntilNextFrame--;
            if (fireballs[i].timeUntilNextFrame == 0) {
                fireballs[i].timeUntilNextFrame = 10;
                if (fireballs[i].dispel) {
                    fireballs[i].currentFrame = (fireballs[i].currentFrame + 1) % fireballs[i].dispelFrames;
                    if (fireballs[i].currentFrame == fireballs[i].dispelFrames - 1) {
                        fireballs[i].active = 0;
                        fireballs[i].dispel = 0;
                    }
                } else {
                    fireballs[i].currentFrame = (fireballs[i].currentFrame + 1) % fireballs[i].numFrames;
                }
            }
        }
    }
}

void updateBubbles() {

    for (int i = 0; i < 3; i++) {
        if (bubbles[i].active) {
            bubbles[i].timer--;
            if (bubbles[i].timer == 0 || bubbles[i].y < 32) {
                bubbles[i].active = 0;
                player.numOfBubbles++;
            } else {
                if (bubbles[i].x + bubbles[i].xVel > 17
                && bubbles[i].x + bubbles[i].xVel < 207
                && bubbles[i].x - bubbles[i].oldX != 20
                && bubbles[i].x - bubbles[i].oldX != -40) {
                bubbles[i].x += bubbles[i].xVel;
                } else if (bubbles[i].y) {
                    bubbles[i].y--;
                }
            }
        }
    }
}

void updatePlayer() {
    if (player.damageBuffer != 0) player.damageBuffer--;
    if (player.jumpTimer != 0) player.jumpTimer--;

    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;


    player.isMoving = 0;
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        if (colorAt(leftX - player.xVel, topY) && colorAt(leftX - player.xVel, bottomY)) {
            player.x -= player.xVel;
        }
        player.direction = LEFT;
        player.isMoving = 1;
    } else if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if (player.x < (240 - player.width) && colorAt(rightX + player.xVel, topY) && colorAt(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }
        player.direction = RIGHT;
        player.isMoving = 1;
    }
    if ((!(~(oldButtons) & ((1<<6))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<6)))) && player.y > 32 && (!colorAt(leftX, bottomY + player.yVel) || !colorAt(rightX, bottomY + player.yVel))) {


        if (player.jumpTimer == 0) {
            player.jumpTimer = 35;
            player.y -= player.yVel;
            player.isMoving = 1;
        }
        if (player.direction == RIGHT || player.direction == UP_RIGHT) {
            player.direction = UP_RIGHT;
        } else {
            player.direction = UP_LEFT;
        }
    } else if (player.jumpTimer != 0 && player.y > 32) {

        player.y -= player.yVel;
        player.isMoving = 1;
        if (player.direction == RIGHT || player.direction == UP_RIGHT) {
            player.direction = UP_RIGHT;
        } else {
            player.direction = UP_LEFT;
        }
    } else if (player.y < (160 - player.height) && colorAt(leftX, bottomY + player.yVel) && colorAt(rightX, bottomY + player.yVel)) {

        player.y += player.yVel;
        if (player.direction == RIGHT || player.direction == UP_RIGHT) {
            player.direction = UP_RIGHT;
        } else {
            player.direction = UP_LEFT;
        }
    }
    if ((!(~(oldButtons) & ((1<<0))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<0))))) {
        player.bubbleCounter = 30;
        player.isMoving = 1;
        if (player.numOfBubbles > 0) {
            player.numOfBubbles--;
            for (int i = 0; i < 3; i++) {
                if (!bubbles[i].active) {
                    bubbles[i].active = 1;
                    bubbles[i].y = player.y;
                    bubbles[i].timer = 300;
                    if (player.direction == LEFT || player.direction == UP_LEFT) {
                        bubbles[i].oldX = player.x;
                        bubbles[i].xVel = -1;
                        bubbles[i].x = player.x - bubbles[i].width;
                        if (bubbles[i].x < 8) {
                            bubbles[i].x = 8;
                        }
                    } else {
                        bubbles[i].oldX = player.x + player.width;
                        bubbles[i].xVel = 1;
                        bubbles[i].x = player.x + player.width;
                        if (bubbles[i].x > 218) {
                            bubbles[i].x = 218;
                        }
                    }
                    break;
                }
            }

        }
    }
    if (player.bubbleCounter != 0) {
        player.bubbleCounter--;
    }
    if (player.isMoving) {
        player.timeUntilNextFrame--;
        if (player.timeUntilNextFrame == 0) {
            if (!((player.direction == UP_LEFT || player.direction == UP_RIGHT) && player.currentFrame == 3)) {
                player.currentFrame = (player.currentFrame + 1) % player.moveFrames;
            }
            player.timeUntilNextFrame = 10;
        }
    } else {
        player.currentFrame = 0;
    }
}

void updateShadowOAM() {

    if (scoreAnimation.isAnimating) {
        scoreAnimation.timeUntilNextFrame--;
        if (scoreAnimation.timeUntilNextFrame == 0) {
            scoreAnimation.isAnimating = 0;
        }
    }

    hundreds.number = score / 100;
    tens.number = (score / 10) % 10;




    shadowOAM[scoreAnimation.oamIndex].attr0 = ((scoreAnimation.y) & 0xFF) | (0<<14);
    shadowOAM[scoreAnimation.oamIndex].attr1 = ((scoreAnimation.x) & 0x1FF) | (1<<14);
    shadowOAM[scoreAnimation.oamIndex].attr2 = ((((16) * (32) + (12))) & 0x3FF);
    if (!scoreAnimation.isAnimating) {
        shadowOAM[scoreAnimation.oamIndex].attr0 = (2<<8);
    }


    shadowOAM[hundreds.oamIndex].attr0 = ((hundreds.y) & 0xFF) | (2<<14);
    shadowOAM[hundreds.oamIndex].attr1 = ((hundreds.x) & 0x1FF) | (0<<14);
    shadowOAM[hundreds.oamIndex].attr2 = ((((15) * (32) + (hundreds.number + 17))) & 0x3FF);

    shadowOAM[tens.oamIndex].attr0 = ((tens.y) & 0xFF) | (2<<14);
    shadowOAM[tens.oamIndex].attr1 = ((tens.x) & 0x1FF) | (0<<14);
    shadowOAM[tens.oamIndex].attr2 = ((((15) * (32) + (tens.number + 17))) & 0x3FF);

    shadowOAM[ones.oamIndex].attr0 = ((ones.y) & 0xFF) | (2<<14);
    shadowOAM[ones.oamIndex].attr1 = ((ones.x) & 0x1FF) | (0<<14);
    shadowOAM[ones.oamIndex].attr2 = ((((15) * (32) + (ones.number + 17))) & 0x3FF);


    shadowOAM[player.oamIndex].attr0 = ((player.y) & 0xFF) | (0<<14);
    shadowOAM[player.oamIndex].attr1 = ((player.x) & 0x1FF) | (1<<14);
    if (player.direction == RIGHT || player.direction == UP_RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= (1<<12);
    }
    if (player.bubbleCounter != 0) {
        shadowOAM[player.oamIndex].attr2 = ((((6) * (32) + (2 * player.currentFrame))) & 0x3FF);
    } else if (player.direction < 2) {
        shadowOAM[player.oamIndex].attr2 = ((((0) * (32) + (2 * player.currentFrame))) & 0x3FF);
    } else {
        shadowOAM[player.oamIndex].attr2 = ((((4) * (32) + (2 * player.currentFrame))) & 0x3FF);
    }


    for (int i = 0; i < 3; i++) {
        if (bubbles[i].active) {
            shadowOAM[bubbles[i].oamIndex].attr0 = ((bubbles[i].y) & 0xFF) | (0<<14);
            shadowOAM[bubbles[i].oamIndex].attr1 = ((bubbles[i].x) & 0x1FF) | (1<<14);
            shadowOAM[bubbles[i].oamIndex].attr2 = ((((14) * (32) + (12))) & 0x3FF);
        } else {
            shadowOAM[bubbles[i].oamIndex].attr0 = (2<<8);
        }
    }


    for (int i = 0; i < 6; i++) {
        if (!enemies[i].active) {
            shadowOAM[enemies[i].oamIndex].attr0 = (2<<8);
            continue;
        }
        shadowOAM[enemies[i].oamIndex].attr0 = ((enemies[i].y) & 0xFF) | (0<<14);
        shadowOAM[enemies[i].oamIndex].attr1 = ((enemies[i].x) & 0x1FF) | (1<<14);
        if (enemies[i].eType == ROBOT) {
            if (enemies[i].inBubble) {
                shadowOAM[enemies[i].oamIndex].attr2 = ((((0) * (32) + (enemies[i].currentFrame * 2 + 16))) & 0x3FF);
            } else if (enemies[i].isFruit) {
               shadowOAM[enemies[i].oamIndex].attr2 = ((((16) * (32) + (enemies[i].food * 2))) & 0x3FF);
            } else {
                shadowOAM[enemies[i].oamIndex].attr2 = ((((0) * (32) + (enemies[i].currentFrame * 2 + 8))) & 0x3FF);
            }

            if (enemies[i].direction == RIGHT) {
                shadowOAM[enemies[i].oamIndex].attr1 |= (1<<12);
            }

        } else if (enemies[i].eType == GHOST) {
            if (enemies[i].inBubble) {
                shadowOAM[enemies[i].oamIndex].attr2 = ((((6) * (32) + (enemies[i].currentFrame * 2 + 12))) & 0x3FF);
            } else if (enemies[i].isFruit) {
               shadowOAM[enemies[i].oamIndex].attr2 = ((((16) * (32) + (enemies[i].food * 2))) & 0x3FF);
            } else {
                shadowOAM[enemies[i].oamIndex].attr2 = ((((6) * (32) + (enemies[i].currentFrame * 2 + 8))) & 0x3FF);
            }
            if (enemies[i].direction == RIGHT) {
                shadowOAM[enemies[i].oamIndex].attr1 |= (1<<12);
            }
        } else if (enemies[i].eType == WIZARD) {
            if (enemies[i].inBubble) {
                shadowOAM[enemies[i].oamIndex].attr2 = ((((2) * (32) + (enemies[i].currentFrame * 2 + 16))) & 0x3FF);
            } else if (enemies[i].isFruit) {
               shadowOAM[enemies[i].oamIndex].attr2 = ((((16) * (32) + (enemies[i].food * 2))) & 0x3FF);
            } else if (enemies[i].chargeFireball) {
                shadowOAM[enemies[i].oamIndex].attr0 = ((enemies[i].y) & 0xFF) | (1<<14);
                shadowOAM[enemies[i].oamIndex].attr1 = ((enemies[i].x) & 0x1FF) | (2<<14);
                shadowOAM[enemies[i].oamIndex].attr2 = ((((4) * (32) + (enemies[i].currentFrame * 4 + 8))) & 0x3FF);
            } else {
                shadowOAM[enemies[i].oamIndex].attr2 = ((((2) * (32) + (enemies[i].currentFrame * 2 + 8))) & 0x3FF);
            }
            if (enemies[i].direction == RIGHT) {
                shadowOAM[enemies[i].oamIndex].attr1 |= (1<<12);
            }
        }
    }

}

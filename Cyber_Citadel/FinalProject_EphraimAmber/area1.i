# 1 "area1.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "area1.c"
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






extern volatile unsigned short* videoBuffer;
# 48 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 67 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 99 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 2 "area1.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "area1.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 64 "sprites.h"
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
    int active;
    int palRow;
    u8 oamIndex;
} SPRITE;
# 4 "area1.c" 2
# 1 "game.h" 1
typedef enum {NONE, BLUE_KNIFE, WHITE_KNIFE, GUN} weaponType;

typedef enum {IDLE_LEFT, WALK_LEFT, JUMP_LEFT, DOUBLEJUMP_LEFT, RUN_LEFT, ATTACK1_LEFT, ATTACK2_LEFT, CLIMB_LEFT,
                IDLE_RIGHT, WALK_RIGHT, JUMP_RIGHT, DOUBLEJUMP_RIGHT, RUN_RIGHT, ATTACK1_RIGHT, ATTACK2_RIGHT, CLIMB_RIGHT} direction;

typedef enum {ROBOT, SHOOTER, BIRD, SKATEBOARD, BATTER, MACHINE} enemyType;

typedef enum {UP, DOWN, LEFT, RIGHT} enemyDirection;

typedef enum {LOLLY, PANCAKE, CAKE, BURGER, HEALTH_POTION, DEFENSE_POTION, DAMAGE_POTION} itemType;
# 29 "game.h"
typedef struct {

    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int palRow;
    u8 oamIndex;
    int enemyType;
    int originalY;
    int enemyDirection;


    int timeUntilNextFrame;
    int direction;
    int currentFrame;
    int numFrames;


    int damage;
    int respawnTimer;
    int health;
    int active;
    int isAttacking;
    int damageBuffer;
    int attackTimer;
} ENEMY;

typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int damage;
    int active;
    int oamIndex;
    int palRow;
    int timer;
} BULLET;

typedef struct {

    int x;
    int y;
    int width;
    int height;
    int palRow;
    u8 oamIndex;


    int timeUntilNextFrame;
    int currentFrame;
    int numFrames;


    int active;
    int talk;
    int num;
    int objectiveCompleted;
} NPC;

typedef struct {

    int x;
    int y;
    int itemType;
    int price;

    int width;
    int height;
    int palRow;
    u8 oamIndex;

    int objective;
    int collected;
    int used;
} ITEM;

typedef struct {

    int x;
    int y;
    int width;
    int height;
    u8 oamIndex;


    int weaponType;
    int damage;
    int collected;
} WEAPON;

typedef struct {

    int area2Map;
    int bossOpen;


    int credits;
    int maxItems;
} INVENTORY;

typedef struct {

    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;

    int jumping;
    int falling;
    int jumpTimer;
    int isAttacking;
    int dealingDamage;
    u8 oamIndex;


    int direction;
    int timeUntilNextFrame;
    int currentFrame;
    int numFrames;


    int baseDamage;
    int defenseBoost;
    int damageBoost;
    int damageBuffer;
    int health;
    int maxHealth;
    int fallDamageTimer;
    int fallDamage;
    WEAPON equippedWeapon;
} PLAYER;
# 5 "area1.c" 2
# 1 "backgrounds.h" 1


extern const unsigned short basicTiles[320];

extern const unsigned short basicPal[16];






extern const unsigned short skyMap[1024];



extern const unsigned short splashTiles[7680];


extern const unsigned short splashPal[256];




extern const unsigned short splashMap[1024];



extern const unsigned short instructionsAndPauseTiles[6400];


extern const unsigned short instructionsAndPausePal[256];




extern const unsigned short instructionsMap[1024];



extern const unsigned short inventoryTiles[6400];


extern const unsigned short inventoryPal[256];




extern const unsigned short inventoryMap[1024];





extern const unsigned short pauseMap[1024];



extern const unsigned char houseTiles[12800];


extern const unsigned char housePal[512];





extern const unsigned short houseMap[2048];


extern const unsigned char housecmBitmap[131072];



extern const unsigned short shopsTiles[10000];


extern const unsigned short shopsPal[256];





extern const unsigned short shopsBG0Map[2048];






extern const unsigned short shopsBG1Map[2048];





extern const unsigned short shopsSkyMap[1024];


extern const unsigned char shopscmBitmap[131072];






extern const unsigned short storeMap[1024];



extern const unsigned short area1Tiles[16384];


extern const unsigned short area1Pal[256];







extern const unsigned short area1BG0Map[4096];
extern const unsigned short area1BG1Map[4096];
extern const unsigned short area1BG2Map[2048];


extern const unsigned char area1cmBitmap[262144];



extern const unsigned short area2Tiles[16384];


extern const unsigned short area2Pal[256];






extern const unsigned short area2BG0Map[4096];
extern const unsigned short area2BG1Map[2048];


extern const unsigned char area2cmBitmap[262144];






extern const unsigned short finalBG0Map[2048];
extern const unsigned short finalBG1Map[1024];


extern const unsigned char finalcmBitmap[131072];




extern const unsigned short winMap[1024];





extern const unsigned short loseMap[1024];



extern const unsigned short textTiles[6000];

extern const unsigned short textPal[256];






extern const unsigned short text1Map[1024];






extern const unsigned short text2Map[1024];






extern const unsigned short text3Map[1024];






extern const unsigned short text4Map[1024];






extern const unsigned short text5Map[1024];






extern const unsigned short text6Map[1024];






extern const unsigned short completedTextMap[1024];






extern const unsigned short textCatMap[1024];






extern const unsigned short textMapMap[1024];
# 6 "area1.c" 2
# 1 "spritesheets.h" 1


extern const unsigned short interfaceSSTiles[16384];


extern const unsigned short interfaceSSPal[256];



extern const unsigned short mainSSTiles[16384];


extern const unsigned short mainSSPal[256];



extern const unsigned short area1SSTiles[16384];


extern const unsigned short area1SSPal[256];




extern const unsigned short area2SSTiles[16384];


extern const unsigned short area2SSPal[256];



extern const unsigned short finalSSTiles[16384];


extern const unsigned short finalSSPal[256];



extern const unsigned short textSSTiles[16384];


extern const unsigned short textSSPal[256];
# 7 "area1.c" 2
# 1 "hit.h" 1


extern const unsigned int hit_sampleRate;
extern const unsigned int hit_length;
extern const signed char hit_data[];
# 8 "area1.c" 2


OBJ_ATTR shadowOAM[128];


extern unsigned short oldButtons;
extern unsigned short buttons;


extern enum STATE {SPLASH, INSTRUCTIONS, PAUSE, OPEN_INVENTORY, STORE, GAME, LOSE, WIN, TEXT} state;
extern enum LAUNCH_TEXT {A, B, C, D, E, F, CAT, MAP, COMPLETED} ltext;

void* cm;


PLAYER player;

SPRITE plumbob;

extern int pal;


extern NPC people[6];


ENEMY enemies[6];
BULLET electricity[10];


WEAPON allWeapons[4];
ITEM allItems[22];


int toShops;
int toText;


INVENTORY inventory;


BULLET bullets[4];


int delay;

void initArea1() {
    plumbob.active = 0;
    toShops = 0;
    delay = 0;
    toText = 0;

    if (pal != 0) {
        setColor();
    }

    cm = area1cmBitmap;





    if (state != PAUSE && state != OPEN_INVENTORY && state != TEXT) {
        player.x = 445;
        player.y = 440;
        player.direction = IDLE_LEFT;

        player.jumping = 0;
        player.falling = 0;
        player.isAttacking = 0;
        player.damageBuffer = 0;

        for(int i = 0; i < 6; i++) {

            if (i < 3) {
                enemies[i].width = 30;
                enemies[i].height = 32;
                enemies[i].enemyType = ROBOT;
                enemies[i].enemyDirection = DOWN;
                enemies[i].damage = 3;
                enemies[i].health = 4;
            } else if (i < 5) {
                enemies[i].width = 30;
                enemies[i].height = 40;
                enemies[i].enemyType = SHOOTER;
                enemies[i].damage = 4;
                enemies[i].health = 5;
            } else {
                enemies[i].width = 16;
                enemies[i].height = 8;
                enemies[i].enemyType = BIRD;
                enemies[i].x = 0;
                enemies[i].y = 200;
                enemies[i].damage = 2;
                enemies[i].health = 1;
            }
            enemies[i].isAttacking = 0;
            enemies[i].oamIndex = i + 3;
            enemies[i].xVel = 1;
            enemies[i].yVel = 1;
            enemies[i].palRow = 1;
            enemies[i].timeUntilNextFrame = 10;
            enemies[i].currentFrame = 0;
            enemies[i].numFrames = 4;
            enemies[i].active = 1;
            enemies[i].damageBuffer = 0;
        }

        enemies[0].x = 356;
        enemies[0].y = 380;
        enemies[0].originalY = 380;
        enemies[1].x = 183;
        enemies[1].y = 320;
        enemies[1].originalY = 320;
        enemies[2].x = 446;
        enemies[2].y = 200;
        enemies[2].originalY = 200;

        enemies[3].x = 186;
        enemies[3].y = 208;
        enemies[4].x = 146;
        enemies[4].y = 72;

        enemies[5].active = 0;
        enemies[5].attackTimer = 500;
        enemies[5].isAttacking = 1;
    }
    for (int i = 0; i < 10; i++) {

        electricity[i].width = 2;
        electricity[i].height = 2;
        electricity[i].damage = 3;
        electricity[i].active = 0;
        electricity[i].oamIndex = 9 + i;
        electricity[i].palRow = 1;
    }

}

void updateArea1() {
    if (toShops) {
        goToShops();
    } else {
        plumbob.active = 0;
        updatePlayer();
        updateEnemiesArea1();
        updateBullets();

        if (player.x > 0 && player.x < 40 && player.y < 81) {
            if (!inventory.area2Map) {
                ltext = MAP;
                toText = 1;
                inventory.area2Map = 1;;
            }
        }

        if (player.health <= 0) {
            player.health = player.maxHealth;
            goToLose();
        } else if (toText) {
            goToText();
        } else {
            draw();
        }
    }
}

void plumbobArea1(int left, int right) {
    if (left == 2 || right == 2) {
        plumbob.active = 1;
        plumbob.palRow = 10;
        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
            toShops = 1;
        }
    }
}

void updateEnemiesArea1() {
    delay++;
    enemies[5].attackTimer--;
    if (!enemies[5].attackTimer) {
        enemies[5].active = 1;
        enemies[5].y = player.y + 10;
        enemies[5].x = 0;
    }
    for(int i = 0; i < 6; i++) {
        if (delay % 2 == 0) continue;
        if (!enemies[i].active) {
            shadowOAM[enemies[i].oamIndex].attr0 = (2 << 8);
            continue;
        }
        if (enemies[i].damageBuffer != 0) enemies[i].damageBuffer--;

        for(int j = 0; j < 4; j++) {
            if (collision(bullets[j].x, bullets[j].y, bullets[j].width, bullets[j].height, enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
                enemies[i].active = 0;
                inventory.credits += (rand() % 101) + 50;
            }
        }
        if (player.dealingDamage && enemies[i].damageBuffer == 0 && collision(player.equippedWeapon.x, player.equippedWeapon.y, player.equippedWeapon.width, player.equippedWeapon.height,
            enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
            enemies[i].health -= player.baseDamage + player.equippedWeapon.damage + player.damageBoost;
            enemies[i].damageBuffer = 20;
            if (enemies[i].enemyType == SHOOTER) enemies[i].currentFrame = 0;
            if (enemies[i].health <= 0) {
                enemies[i].active = 0;
                inventory.credits += (rand() % 101) + 50;
            }
            if (enemies[i].enemyType == BIRD) enemies[i].attackTimer = 500;
        }

        if (enemies[i].isAttacking) {
            if (enemies[i].active && player.damageBuffer == 0 && collision(player.x + 8, player.y, 16, player.height, enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
                player.health -= (enemies[i].damage - player.defenseBoost);
                player.damageBuffer = 45;
                playSoundB(hit_data, hit_length, 0);
                if (people[0].talk && enemies[i].enemyType == BIRD) {
                    people[0].num = 0;
                }
                if (people[4].talk && people[4].num > 0 && enemies[i].enemyType == ROBOT) {
                    people[4].num--;
                }
            }
        }
        switch(enemies[i].enemyType) {
            case ROBOT:
                if (!enemies[i].isAttacking && enemies[i].enemyDirection == DOWN) {
                    enemies[i].y += enemies[i].yVel;
                    if (enemies[i].y - enemies[i].originalY >= 20) {
                        enemies[i].enemyDirection = UP;
                    }
                } else if (!enemies[i].isAttacking && enemies[i].enemyDirection == UP) {
                    enemies[i].y -= enemies[i].yVel;
                    if (enemies[i].y == enemies[i].originalY) {
                        enemies[i].isAttacking = 1;
                        enemies[i].currentFrame = 0;
                        enemies[i].enemyDirection = DOWN;
                    }
                }

                enemies[i].timeUntilNextFrame--;
                if (!enemies[i].timeUntilNextFrame) {
                    enemies[i].timeUntilNextFrame = 10;
                    if (enemies[i].isAttacking) {
                        enemies[i].currentFrame += 1;
                        if (enemies[i].currentFrame == 4) {
                            enemies[i].isAttacking = 0;
                        }
                        enemies[i].currentFrame--;
                        enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 4;
                    } else {
                        enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 2;
                    }
                }

                shadowOAM[enemies[i].oamIndex].attr0 = ((screenY(enemies[i].y, enemies[i].height)) & 0xFF) | (0 << 14);
                shadowOAM[enemies[i].oamIndex].attr1 = ((screenX(enemies[i].x, enemies[i].width)) & 0x1FF) | (2 << 14);
                if (enemies[i].damageBuffer != 0) {
                    shadowOAM[enemies[i].oamIndex].attr2 = (((15) * (32) + (28)) & 0x3FF)| (((enemies[i].palRow) & 0xF) << 12);
                } else if (enemies[i].isAttacking) {
                    shadowOAM[enemies[i].oamIndex].attr2 = (((20) * (32) + (4 * enemies[i].currentFrame)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
                } else {
                    shadowOAM[enemies[i].oamIndex].attr2 = (((11) * (32) + (24)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
                }
                break;
            case SHOOTER:

                if (screenY(enemies[i].y, enemies[i].height) > 160 && screenX(enemies[i].x, enemies[i].width) > 240) {
                    shadowOAM[enemies[i].oamIndex].attr0 = ((screenY(enemies[i].y, enemies[i].height)) & 0xFF) | (2 << 14);
                    shadowOAM[enemies[i].oamIndex].attr1 = ((screenX(enemies[i].x, enemies[i].width)) & 0x1FF) | (3 << 14);
                    shadowOAM[enemies[i].oamIndex].attr2 = (((24) * (32) + (0)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
                    continue;
                }
                enemies[i].timeUntilNextFrame--;
                if (!enemies[i].timeUntilNextFrame) {
                    enemies[i].timeUntilNextFrame = 25;
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 4;
                    if (enemies[i].currentFrame == 3) {
                        int spawned = 0;
                        for(int j = 0; j < 10; j++) {
                            if (!electricity[j].active) {
                                electricity[j].active = 1;
                                electricity[j].timer = 75;
                                if (player.x < enemies[i].x) {
                                    electricity[j].xVel = -1;
                                    electricity[j].x = enemies[i].x + 8 * spawned;
                                } else {
                                    electricity[j].xVel = 1;
                                    electricity[j].x = enemies[i].x + 20 + 8 * spawned;
                                }
                                if (player.y < enemies[i].y) {
                                    electricity[j].yVel = -1;
                                    electricity[j].y = enemies[i].y;
                                } else if (player.y > enemies[i].y + enemies[i].height) {
                                    electricity[j].yVel = 1;
                                    electricity[j].y = enemies[i].y + 34;
                                } else {
                                    electricity[j].yVel = 0;
                                    electricity[j].y = enemies[i].y + 19;
                                }
                                spawned++;
                                if (spawned == 2) break;
                            }
                        }
                    }
                }

                shadowOAM[enemies[i].oamIndex].attr0 = ((screenY(enemies[i].y, enemies[i].height)) & 0xFF) | (2 << 14);
                shadowOAM[enemies[i].oamIndex].attr1 = ((screenX(enemies[i].x, enemies[i].width)) & 0x1FF) | (3 << 14);
                if (enemies[i].damageBuffer != 0) {
                    shadowOAM[enemies[i].oamIndex].attr2 = (((24) * (32) + (0)) & 0x3FF) | (((8) & 0xF) << 12);
                } else {
                    if (enemies[i].currentFrame < 2) {
                        shadowOAM[enemies[i].oamIndex].attr2 = (((24) * (32) + (4 * enemies[i].currentFrame)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
                    } else {
                        if (player.y > enemies[i].y + enemies[i].height) {
                            shadowOAM[enemies[i].oamIndex].attr2 = (((24) * (32) + (4 * enemies[i].currentFrame + 8)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
                        } else if (player.y < enemies[i].y) {
                            shadowOAM[enemies[i].oamIndex].attr2 = (((24) * (32) + (4 * enemies[i].currentFrame + 16)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
                        } else {
                            shadowOAM[enemies[i].oamIndex].attr2 = (((24) * (32) + (4 * enemies[i].currentFrame)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
                        }
                    }
                }
                if (enemies[i].x > player.x) shadowOAM[enemies[i].oamIndex].attr1 |= (1 << 12);
                break;
            case BIRD:
                enemies[i].timeUntilNextFrame--;
                if (!enemies[i].timeUntilNextFrame) {
                    enemies[i].timeUntilNextFrame = 10;
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 6;
                }
                enemies[i].x += 2;
                if (enemies[i].x > 512) {
                    enemies[i].active = 0;
                    enemies[i].attackTimer = 500;
                }

                shadowOAM[enemies[i].oamIndex].attr0 = ((screenY(enemies[i].y, enemies[i].height)) & 0xFF) | (1 << 14);
                shadowOAM[enemies[i].oamIndex].attr1 = ((screenX(enemies[i].x, enemies[i].width)) & 0x1FF) | (0 << 14);
                shadowOAM[enemies[i].oamIndex].attr2 = (((20) * (32) + (16 + 2 * enemies[i].currentFrame)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
            break;
        }
    }
}

void updateBullets() {
    for(int i = 0; i < 10; i++) {
        if (!electricity[i].active) {
            shadowOAM[electricity[i].oamIndex].attr0 = (2 << 8);
            continue;
        }
        electricity[i].timer--;

        if (!player.damageBuffer && collision(player.x + 8, player.y, 16, player.height, electricity[i].x, electricity[i].y, electricity[i].width, electricity[i].height)) {
            player.health -= (enemies[i].damage - player.defenseBoost);
            player.damageBuffer = 45;
            playSoundB(hit_data, hit_length, 0);
        }
        electricity[i].x += electricity[i].xVel;
        electricity[i].y += electricity[i].yVel;
        if (electricity[i].timer == 0) {
            electricity[i].active = 0;
        }
        shadowOAM[electricity[i].oamIndex].attr0 = ((screenY(electricity[i].y, electricity[i].height)) & 0xFF) | (0 << 14);
        shadowOAM[electricity[i].oamIndex].attr1 = ((screenX(electricity[i].x, electricity[i].width)) & 0x1FF) | (0 << 14);
        shadowOAM[electricity[i].oamIndex].attr2 = (((3) * (32) + (21)) & 0x3FF) | (((electricity[i].palRow) & 0xF) << 12);
    }
}

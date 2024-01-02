# 1 "final.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "final.c"
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
# 2 "final.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "final.c" 2
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
# 4 "final.c" 2
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
# 5 "final.c" 2
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
# 6 "final.c" 2
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
# 7 "final.c" 2
# 1 "hit.h" 1


extern const unsigned int hit_sampleRate;
extern const unsigned int hit_length;
extern const signed char hit_data[];
# 8 "final.c" 2


OBJ_ATTR shadowOAM[128];


extern unsigned short oldButtons;
extern unsigned short buttons;


extern enum STATE {SPLASH, INSTRUCTIONS, PAUSE, OPEN_INVENTORY, STORE, GAME, LOSE, WIN} state;


void* cm;


PLAYER player;

SPRITE plumbob;

extern int pal;


WEAPON allWeapons[4];
ITEM allItems[22];


BULLET bullets[4];


int toWin;
int phase1;
int phase2;
int cutScene;


INVENTORY inventory;


ENEMY enemies[2];
BULLET golfballs[10];
ENEMY boss;
SPRITE car1;
SPRITE car2;

int delay;

void initFinal() {

    cm = finalcmBitmap;
    plumbob.active = 0;

    if (pal != 0) {
        setColor();
    }
    showCar();
    if (state != PAUSE && state != OPEN_INVENTORY) {

        phase1 = 1;
        phase2 = 0;
        cutScene = 0;

        player.jumping = 0;
        player.falling = 0;
        player.isAttacking = 0;
        player.x = 113;
        player.y = 132;
        player.direction = IDLE_LEFT;

        for(int i = 0; i < 2; i++) {
            enemies[i].width = 32;
            enemies[i].height = 32;
            enemies[i].damage = 2;
            enemies[i].health = 6;
            enemies[i].isAttacking = 0;
            enemies[i].oamIndex = i + 3;
            enemies[i].palRow = 1;
            enemies[i].timeUntilNextFrame = 1;
            enemies[i].currentFrame = 0;
            enemies[i].numFrames = 2;
            enemies[i].active = 1;
            enemies[i].damageBuffer = 0;
            enemies[i].enemyType = MACHINE;
            enemies[i].damage = 4;
        }
        enemies[0].x = 11;
        enemies[0].y = 193;
        enemies[0].enemyDirection = RIGHT;
        enemies[1].x = 215;
        enemies[1].y = 193;
        enemies[1].enemyDirection = LEFT;
        enemies[1].timeUntilNextFrame = 100;


        for (int i = 0; i < 10; i++) {

            golfballs[i].width = 8;
            golfballs[i].height = 2;
            golfballs[i].damage = 2;
            golfballs[i].active = 0;
            golfballs[i].oamIndex = 9 + i;
            golfballs[i].palRow = 1;
        }


        car1.x = 440;
        car1.y = 172;
        car1.palRow = 3;
        car1.oamIndex = 20;
        car2.x = car1.x - 8;
        car2.y = car1.y + 32;
        car2.palRow = 3;
        car2.oamIndex = 21;

        boss.width = 32;
        boss.xVel = 1;
        boss.height = 32;
        boss.active = 1;
        boss.oamIndex = 6;
        boss.palRow = 2;
        boss.health = 15;
        boss.damage = 5;
        boss.timeUntilNextFrame = 10;
    }
}

void updateFinal() {
    showCar();
    if (phase1) {
        if (!enemies[0].active && !enemies[1].active) {
            phase1 = 0;
            for(int i = 0; i < 10; i++) {
                golfballs[i].active = 0;
            }
        }
        updatePlayer();
        if (player.x < 11) player.x = 11;
        if (player.x > 222) player.x = 222;
        updateEnemiesFinal();
        updateGolfballs();
    } else if (phase2) {
        if (cutScene) {
            updateScene();
        } else {
            updatePlayer();
            if (player.x < 266) player.x = 266;
            if (player.x > 480) player.x = 480;
            updateBoss();
        }
    } else {
        updatePlayer();
        if(player.x > 330) {
            phase2 = 1;
            cutScene = 1;
            updatePlayer();
            shadowOAM[player.oamIndex].attr2 = (((0) * (32) + (0)) & 0x3FF);
        }
    }
    if (player.health <= 0) {
        player.health = player.maxHealth;
        goToLose();
    } else if (!boss.active) {
        goToWin();
    } else {
        draw();
    }
}

void updateEnemiesFinal() {

    for (int i = 0; i < 2; i++) {
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
            enemies[i].damageBuffer = 60;
            if (enemies[i].health <= 0) {
                enemies[i].active = 0;
                inventory.credits += (rand() % 101) + 50;
            }
        }
        if (enemies[i].damageBuffer == 0) {

            enemies[i].timeUntilNextFrame--;
            if (!enemies[i].timeUntilNextFrame) {
                enemies[i].timeUntilNextFrame = 100;
                enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 2;
                if (enemies[i].currentFrame == 1) {
                    for(int j = 0; j < 10; j++) {
                        if (!golfballs[j].active) {
                            golfballs[j].active = 1;
                            golfballs[j].timer = 300;
                            golfballs[j].y = 205;
                            if (enemies[i].enemyDirection == RIGHT) {
                                golfballs[j].xVel = 1;
                                golfballs[j].x = 38;
                            } else {
                                golfballs[j].xVel = -1;
                                golfballs[j].x = 208;
                            }
                            break;
                        }
                    }
                }
            }
        }


        shadowOAM[enemies[i].oamIndex].attr0 = ((screenY(enemies[i].y, enemies[i].height)) & 0xFF) | (0 << 14);
        shadowOAM[enemies[i].oamIndex].attr1 = ((screenX(enemies[i].x, enemies[i].width)) & 0x1FF) | (2 << 14);
        if (enemies[i].damageBuffer != 0) {
            shadowOAM[enemies[i].oamIndex].attr2 = (((12) * (32) + (28)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
        } else {
            shadowOAM[enemies[i].oamIndex].attr2 = (((8) * (32) + (4 * enemies[i].currentFrame + 24)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
        }
        if (enemies[i].enemyDirection == LEFT) shadowOAM[enemies[i].oamIndex].attr1 |= (1 << 12);
    }
}

void updateGolfballs() {
    for(int i = 0; i < 10; i++) {
        if (!golfballs[i].active) {
            shadowOAM[golfballs[i].oamIndex].attr0 = (2 << 8);
            continue;
        }

        if (!player.damageBuffer && collision(player.x + 8, player.y, 16, player.height, golfballs[i].x, golfballs[i].y, golfballs[i].width, golfballs[i].height)) {
            player.health -= (enemies[i].damage - player.defenseBoost);
            player.damageBuffer = 45;
            playSoundB(hit_data, hit_length, 0);
        }
        golfballs[i].timer--;
        golfballs[i].x += golfballs[i].xVel;
        if (golfballs[i].timer == 0) {
            golfballs[i].active = 0;
        }
        shadowOAM[golfballs[i].oamIndex].attr0 = ((screenY(golfballs[i].y, golfballs[i].height)) & 0xFF) | (0 << 14);
        shadowOAM[golfballs[i].oamIndex].attr1 = ((screenX(golfballs[i].x, golfballs[i].width)) & 0x1FF) | (0 << 14);
        shadowOAM[golfballs[i].oamIndex].attr2 = (((3) * (32) + (21)) & 0x3FF) | (((golfballs[i].palRow) & 0xF) << 12);
        if (golfballs[i].xVel == 1) shadowOAM[golfballs[i].oamIndex].attr1 |= (1 << 12);
    }
}

void showCar() {
    shadowOAM[car1.oamIndex].attr0 = ((screenY(car1.y, 0)) & 0xFF) | (0 << 14);
    shadowOAM[car1.oamIndex].attr1 = ((screenX(car1.x, 0)) & 0x1FF) | (3 << 14) | (1 << 12);
    shadowOAM[car1.oamIndex].attr2 = (((24) * (32) + (0)) & 0x3FF) | (((car1.palRow) & 0xF) << 12);
    shadowOAM[car2.oamIndex].attr0 = ((screenY(car2.y, 0)) & 0xFF) | (2 << 14);
    shadowOAM[car2.oamIndex].attr1 = ((screenX(car2.x, 0)) & 0x1FF) | (1 << 14) | (1 << 12);
    shadowOAM[car2.oamIndex].attr2 = (((28) * (32) + (8)) & 0x3FF) | (((car1.palRow) & 0xF) << 12);
}

void updateScene() {
    boss.timeUntilNextFrame--;
    if (!boss.timeUntilNextFrame) {
        boss.timeUntilNextFrame = 23;
        boss.currentFrame++;
    }
    switch(boss.currentFrame) {
        case 0:
        case 1:
        boss.x = 455;
        boss.y = 186;
        break;
        case 2:
        boss.x = 454;
        boss.y = 186;
        break;
        case 3:
        boss.x = 457;
        boss.y = 193;
        break;
        case 4:
        boss.x = 456;
        boss.y = 193;
        break;
        case 5:
        boss.x = 455;
        boss.y = 192;
        cutScene = 0;
        break;
    }
    shadowOAM[boss.oamIndex].attr0 = ((screenY(boss.y, boss.height)) & 0xFF) | (0 << 14);
    shadowOAM[boss.oamIndex].attr1 = ((screenX(boss.x, boss.width)) & 0x1FF) | (2 << 14) | (1 << 12);
    shadowOAM[boss.oamIndex].attr2 = (((20) * (32) + (4 * boss.currentFrame)) & 0x3FF) | (((boss.palRow) & 0xF) << 12);
    if (!cutScene) boss.currentFrame = 0;







}

void updateBoss() {
    delay++;
    if (boss.damageBuffer != 0) boss.damageBuffer--;
    if (player.dealingDamage && boss.damageBuffer == 0 && collision(player.equippedWeapon.x, player.equippedWeapon.y, player.equippedWeapon.width, player.equippedWeapon.height,
        boss.x, boss.y, boss.width, boss.height)) {
        boss.health -= player.baseDamage + player.equippedWeapon.damage + player.damageBoost;
        boss.damageBuffer = 60;
        boss.currentFrame = 0;
        boss.isAttacking = 0;
        if (boss.health <= 0) {
            boss.active = 0;
            inventory.credits += 500;
        }
    }

    for(int j = 0; j < 4; j++) {
        if (collision(bullets[j].x, bullets[j].y, bullets[j].width, bullets[j].height, boss.x, boss.y, boss.width, boss.height)) {
            boss.active = 0;
            inventory.credits += (rand() % 101) + 50;
        }
    }

    if (boss.isAttacking) {
        if ((boss.currentFrame == 3 || boss.currentFrame == 4) && !boss.damageBuffer && !player.damageBuffer && collision(player.x + 8, player.y, 16, player.height, boss.x, boss.y, boss.width, boss.height)) {
            player.health -= (boss.damage - player.defenseBoost);
            player.damageBuffer = 45;
            playSoundB(hit_data, hit_length, 0);
        }
    } else {
        if (delay % 2) {
            if (boss.x - player.x < 20 && boss.x - player.x > -20) {
                boss.isAttacking = 1;
                boss.currentFrame = 0;
            } else if (player.x > boss.x) {
                boss.enemyDirection = RIGHT;
                boss.x += boss.xVel;
            } else {
                boss.enemyDirection = LEFT;
                boss.x -= boss.xVel;
            }
        }

    }
    if (boss.currentFrame == 4) boss.isAttacking = 0;
    boss.timeUntilNextFrame--;
    if (!boss.timeUntilNextFrame) {
        boss.timeUntilNextFrame = 13;
        boss.currentFrame = (boss.currentFrame + 1) % 5;
    }
    shadowOAM[boss.oamIndex].attr0 = ((screenY(boss.y, boss.height)) & 0xFF) | (0 << 14);
    shadowOAM[boss.oamIndex].attr1 = ((screenX(boss.x, boss.width)) & 0x1FF) | (2 << 14);
    if (boss.damageBuffer != 0) {
        shadowOAM[boss.oamIndex].attr2 = (((20) * (32) + (28)) & 0x3FF) | (((boss.palRow) & 0xF) << 12);
    } else if (boss.isAttacking) {
        if (boss.currentFrame == 4) {
            shadowOAM[boss.oamIndex].attr0 = ((screenY(boss.y, boss.height)) & 0xFF) | (1 << 14);
            shadowOAM[boss.oamIndex].attr1 = ((screenX(boss.x - 15, boss.width)) & 0x1FF) | (3 << 14);
            shadowOAM[boss.oamIndex].attr2 = (((4) * (32) + (24)) & 0x3FF) | (((boss.palRow) & 0xF) << 12);
        } else if (boss.currentFrame == 3) {
            shadowOAM[boss.oamIndex].attr0 = ((screenY(boss.y, boss.height)) & 0xFF) | (1 << 14);
            shadowOAM[boss.oamIndex].attr1 = ((screenX(boss.x - 15, boss.width)) & 0x1FF) | (3 << 14);
            shadowOAM[boss.oamIndex].attr2 = (((28) * (32) + (4 * boss.currentFrame + 12)) & 0x3FF) | (((boss.palRow) & 0xF) << 12);
        } else {
            shadowOAM[boss.oamIndex].attr2 = (((28) * (32) + (4 * boss.currentFrame + 12)) & 0x3FF) | (((boss.palRow) & 0xF) << 12);
        }
    } else {
        shadowOAM[boss.oamIndex].attr2 = (((24) * (32) + (4 * boss.currentFrame + 12)) & 0x3FF) | (((boss.palRow) & 0xF) << 12);
    }
    if (boss.enemyDirection == LEFT) shadowOAM[boss.oamIndex].attr1 |= (1 << 12);
}

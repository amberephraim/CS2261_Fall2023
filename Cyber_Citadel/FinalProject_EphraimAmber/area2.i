# 1 "area2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "area2.c"
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
# 2 "area2.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "area2.c" 2
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
# 4 "area2.c" 2
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
# 5 "area2.c" 2
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
# 6 "area2.c" 2
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
# 7 "area2.c" 2
# 1 "hit.h" 1


extern const unsigned int hit_sampleRate;
extern const unsigned int hit_length;
extern const signed char hit_data[];
# 8 "area2.c" 2


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


int toShops;
int toBoss;


INVENTORY inventory;


ENEMY enemies[3];


extern NPC people[6];


BULLET bullets[4];

int delay;

void initArea2() {
    plumbob.active = 0;
    toShops = 0;
    toBoss = 0;
    delay = 0;
    inventory.bossOpen = 0;

    if (pal != 0) {
        setColor();
    }

    cm = area2cmBitmap;





    player.jumping = 0;
    player.falling = 0;
    player.isAttacking = 0;
    if (state != PAUSE && state != OPEN_INVENTORY) {
        player.x = 27;
        player.y = 152;
        player.direction = IDLE_RIGHT;

        for (int i = 0; i < 3; i++) {
            enemies[i].xVel = 1;
            enemies[i].yVel = 1;
            enemies[i].width = 32;
            enemies[i].height = 32;
            enemies[i].damage = 4;
            enemies[i].health = 6;
            enemies[i].isAttacking = 0;
            enemies[i].oamIndex = i + 3;
            enemies[i].palRow = 1;
            enemies[i].timeUntilNextFrame = 10;
            enemies[i].currentFrame = 0;
            enemies[i].numFrames = 6;
            enemies[i].active = 1;
            enemies[i].damageBuffer = 0;
            enemies[i].enemyType = SKATEBOARD;
            enemies[i].damage = 4;
            if (i == 2) {
                enemies[i].health = 10;
                enemies[i].enemyType = BATTER;
            }
        }
        enemies[0].x = 252;
        enemies[0].y = 152;
        enemies[0].enemyDirection = RIGHT;
        enemies[1].x = 314;
        enemies[1].y = 288;
        enemies[1].enemyDirection = LEFT;
        enemies[2].x = 282;
        enemies[2].y = 448;
        enemies[2].enemyDirection = RIGHT;
    }



}

inline unsigned char colorAt(int x, int y) {
    return ((unsigned char *)cm) [((y) * (64 * 8) + (x))];
}

void updateArea2() {
    if (toShops) {
        goToShops();
    } else if (toBoss) {
        goToFinal();
    } else {
        plumbob.active = 0;
        updatePlayer();
        updateEnemiesArea2();

        if (player.health <= 0) {
            player.health = player.maxHealth;
            goToLose();
        } else {
            draw();
        }
    }
}

void plumbobArea2(int left, int right) {
    if (left == 2 || right == 2) {
        plumbob.active = 1;
        plumbob.palRow = 10;
        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
            toShops = 1;
        }
    } else if (inventory.bossOpen && (left == 1 || right == 1)) {
        plumbob.active = 1;
        plumbob.palRow = 10;
        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
            toBoss = 1;
        }
    }
}

void updateEnemiesArea2() {
    delay++;
    for(int i = 0; i < 3; i++) {

        if (!enemies[i].active) {
            shadowOAM[enemies[i].oamIndex].attr0 = (2 << 8);
            continue;
        }
        if (enemies[i].damageBuffer != 0) enemies[i].damageBuffer--;
        int leftX = enemies[i].x;
        int rightX = enemies[i].x + enemies[i].width - 1;
        int bottomY = enemies[i].y + enemies[i].height - 1;

        for(int j = 0; j < 4; j++) {
            if (collision(bullets[j].x, bullets[j].y, bullets[j].width, bullets[j].height, enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
                enemies[i].active = 0;
                inventory.credits += (rand() % 101) + 50;
                if (people[2].talk && enemies[i].enemyType == SKATEBOARD) {
                    people[2].num = 0;
                }
                if (i == 2) {
                    inventory.bossOpen = 1;
                    (((SB*) 0x06000000)[18].tilemap[((53) * (32) + (57))] = (838));
                    (((SB*) 0x06000000)[18].tilemap[((53) * (32) + (58))] = (839));
                    (((SB*) 0x06000000)[18].tilemap[((53) * (32) + (59))] = (840));
                    (((SB*) 0x06000000)[18].tilemap[((58) * (32) + (57))] = (998));
                    (((SB*) 0x06000000)[18].tilemap[((58) * (32) + (58))] = (999));
                    (((SB*) 0x06000000)[18].tilemap[((58) * (32) + (59))] = (1000));
                    for (int j = 0; j < 4; j++) {
                        (((SB*) 0x06000000)[18].tilemap[((54 + j) * (32) + (57))] = (870));
                        (((SB*) 0x06000000)[18].tilemap[((54 + j) * (32) + (58))] = (871));
                        (((SB*) 0x06000000)[18].tilemap[((54 + j) * (32) + (59))] = (872));
                    }
                }
            }
        }

        if (player.dealingDamage && enemies[i].damageBuffer == 0 && collision(player.equippedWeapon.x, player.equippedWeapon.y, player.equippedWeapon.width, player.equippedWeapon.height,
            enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
            enemies[i].health -= player.baseDamage + player.equippedWeapon.damage + player.damageBoost;
            enemies[i].damageBuffer = 60;
            if (enemies[i].health <= 0) {
                if (people[2].talk && enemies[i].enemyType == SKATEBOARD) {
                    people[2].num = 0;
                }
                enemies[i].active = 0;
                inventory.credits += (rand() % 101) + 50;
                if (i == 2) {
                    inventory.bossOpen = 1;
                    (((SB*) 0x06000000)[18].tilemap[((53) * (32) + (57))] = (838));
                    (((SB*) 0x06000000)[18].tilemap[((53) * (32) + (58))] = (839));
                    (((SB*) 0x06000000)[18].tilemap[((53) * (32) + (59))] = (840));
                    (((SB*) 0x06000000)[18].tilemap[((58) * (32) + (57))] = (998));
                    (((SB*) 0x06000000)[18].tilemap[((58) * (32) + (58))] = (999));
                    (((SB*) 0x06000000)[18].tilemap[((58) * (32) + (59))] = (1000));
                    for (int j = 0; j < 4; j++) {
                        (((SB*) 0x06000000)[18].tilemap[((54 + j) * (32) + (57))] = (870));
                        (((SB*) 0x06000000)[18].tilemap[((54 + j) * (32) + (58))] = (871));
                        (((SB*) 0x06000000)[18].tilemap[((54 + j) * (32) + (59))] = (872));
                    }
                }
            }
        }
        switch(enemies[i].enemyType) {
            case SKATEBOARD:
            if (!enemies[i].damageBuffer) {

                if (!player.damageBuffer && collision(player.x + 8, player.y, 16, player.height, enemies[i].x + 14, enemies[i].y + 8, 8, enemies[i].height)) {
                    player.health -= (enemies[i].damage - player.defenseBoost);
                    player.damageBuffer = 45;
                    playSoundB(hit_data, hit_length, 0);
                }
                if (enemies[i].enemyDirection == RIGHT) {
                    enemies[i].x += enemies[i].xVel;
                    if (colorAt(rightX, bottomY + 1)) {
                        enemies[i].enemyDirection = LEFT;
                    }
                } else {
                    enemies[i].x -= enemies[i].xVel;
                    if (colorAt(leftX, bottomY + 1) || !colorAt(leftX - 1, bottomY)) {
                        enemies[i].enemyDirection = RIGHT;
                    }
                }
                enemies[i].timeUntilNextFrame--;
                if (!enemies[i].timeUntilNextFrame) {
                    enemies[i].timeUntilNextFrame = 10;
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 6;
                }
            }
            shadowOAM[enemies[i].oamIndex].attr0 = ((screenY(enemies[i].y, enemies[i].height)) & 0xFF) | (0 << 14);
            shadowOAM[enemies[i].oamIndex].attr1 = ((screenX(enemies[i].x, enemies[i].width)) & 0x1FF) | (2 << 14);
            if (enemies[i].damageBuffer != 0) {
                shadowOAM[enemies[i].oamIndex].attr2 = (((28) * (32) + (28)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
            } else {
                shadowOAM[enemies[i].oamIndex].attr2 = (((28) * (32) + (4 * enemies[i].currentFrame)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
            }
            break;
            case BATTER:
            if (player.y > enemies[i].y - 60 && !enemies[i].damageBuffer) {
                if (enemies[i].isAttacking) {
                    if ((enemies[i].currentFrame == 3 || enemies[i].currentFrame == 4) && !player.damageBuffer && collision(player.x + 8, player.y, 16, player.height, enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
                        player.health -= (enemies[i].damage - player.defenseBoost);
                        player.damageBuffer = 45;
                        playSoundB(hit_data, hit_length, 0);
                    }
                } else {
                    if (delay % 2) continue;
                    if (enemies[i].x - player.x < 20 && enemies[i].x - player.x > -20) {
                        enemies[i].isAttacking = 1;
                        enemies[i].currentFrame = 0;
                    } else if (player.x > enemies[i].x) {
                        enemies[i].enemyDirection = RIGHT;
                        enemies[i].x += enemies[i].xVel;
                    } else {
                        enemies[i].enemyDirection = LEFT;
                        enemies[i].x -= enemies[i].xVel;
                    }
                }
            }
            enemies[i].timeUntilNextFrame--;
            if (!enemies[i].timeUntilNextFrame) {
                enemies[i].timeUntilNextFrame = 10;
                enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 6;
            }
            shadowOAM[enemies[i].oamIndex].attr0 = ((screenY(enemies[i].y, enemies[i].height)) & 0xFF) | (0 << 14);
            shadowOAM[enemies[i].oamIndex].attr1 = ((screenX(enemies[i].x, enemies[i].width)) & 0x1FF) | (2 << 14);
            if (enemies[i].damageBuffer != 0) {
                shadowOAM[enemies[i].oamIndex].attr2 = (((20) * (32) + (28)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
            } else if (enemies[i].isAttacking) {
                shadowOAM[enemies[i].oamIndex].attr2 = (((24) * (32) + (4 * enemies[i].currentFrame)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
            } else {
                shadowOAM[enemies[i].oamIndex].attr2 = (((20) * (32) + (4 * enemies[i].currentFrame)) & 0x3FF) | (((enemies[i].palRow) & 0xF) << 12);
            }
            if (enemies[i].currentFrame == 5) enemies[i].isAttacking = 0;
            break;
        }
        if (enemies[i].enemyDirection == LEFT) shadowOAM[enemies[i].oamIndex].attr1 |= (1 << 12);
    }
}

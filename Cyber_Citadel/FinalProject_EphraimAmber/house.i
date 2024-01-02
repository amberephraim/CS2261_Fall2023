# 1 "house.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "house.c"
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
# 2 "house.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "house.c" 2
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
# 4 "house.c" 2
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
# 5 "house.c" 2
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
# 6 "house.c" 2
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
# 7 "house.c" 2


OBJ_ATTR shadowOAM[128];


extern unsigned short oldButtons;
extern unsigned short buttons;

extern enum STATE {SPLASH, INSTRUCTIONS, PAUSE, OPEN_INVENTORY, STORE, GAME, LOSE, WIN, TEXT} state;
extern enum GAME_STATE {START, HOUSE, SHOPS, AREA1, AREA2} gameState;
extern enum LAUNCH_TEXT {A, B, C, D, E, F, CAT, MAP, COMPLETED} ltext;


extern int hOff0;
extern int vOff0;
extern int hOff1;
extern int vOff1;
extern int mapWidth;
extern int mapHeight;


extern int devMode;


PLAYER player;

SPRITE plumbob;


extern void* cm;


int pal;
int numPals;


int switchMap;
int toText;


NPC cat;


WEAPON allWeapons[4];
ITEM allItems[22];


INVENTORY inventory;

void initHouse() {

    cm = housecmBitmap;

    numPals = 4;

    switchMap = 0;
    toText = 0;

    if (pal != 0) {
        setColor();
    }


    if (gameState == SHOPS) {
        player.x = 372;
        player.y = 120;
        player.direction = IDLE_LEFT;
    } else if (state != PAUSE && state != OPEN_INVENTORY && state != TEXT) {
        player.x = 6;
        player.y = 120;
        player.direction = IDLE_RIGHT;
    }


    player.jumping = 0;
    player.falling = 0;
    player.damageBuffer = 0;
    player.isAttacking = 0;

    hOff0 = player.x - (240 - player.width) / 2;
    vOff0 = player.y - (160 - player.height) / 2;


    plumbob.timeUntilNextFrame = 10;
    plumbob.currentFrame = 0;
    plumbob.numFrames = 4;


    cat.oamIndex = 3;
    cat.timeUntilNextFrame = 20;
    cat.currentFrame = 0;
    cat.numFrames = 4;
    cat.x = 275;
    cat.y = 140;
    cat.width = 16;
    cat.height = 9;
}

void updateHouse() {
    plumbob.active = 0;
    updatePlayer();
    updateCat();

    if (switchMap) {
        goToShops();
    } else if (toText) {
        goToText();
    } else {
        draw();
    }
}

void plumbobHouse(int left, int right) {

    if ((left == 1 || right == 1) && cat.talk) {
        plumbob.active = 1;
        plumbob.palRow = 8;
        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
            switchMap = 1;
        }
    } else if (left == 2 || right == 2) {
        plumbob.active = 1;
        plumbob.palRow = 8;

        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
            pal = (pal + 1) % numPals;
            setColor();
        }
    } else if (collision(player.x + 8, player.y, 16, 32, cat.x, cat.y, cat.width, cat.height)) {
        plumbob.active = 1;
        plumbob.palRow = 9;
        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
            cat.talk = 1;
            ltext = CAT;
            toText = 1;
        }
    }
}


void updateCat() {
    cat.timeUntilNextFrame--;
    if (!cat.timeUntilNextFrame) {
        cat.currentFrame = (cat.currentFrame + 1) % cat.numFrames;
        cat.timeUntilNextFrame = 20;
    }
    shadowOAM[cat.oamIndex].attr0 = ((screenY(cat.y)) & 0xFF) | (0 << 14);
    shadowOAM[cat.oamIndex].attr1 = ((screenX(cat.x)) & 0x1FF) | (1 << 14) | (1 << 12);
    shadowOAM[cat.oamIndex].attr2 = (((4) * (32) + (24 + cat.currentFrame * 2)) & 0x3FF);
}

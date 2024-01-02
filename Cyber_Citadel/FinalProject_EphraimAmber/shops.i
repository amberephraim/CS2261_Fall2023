# 1 "shops.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "shops.c"
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
# 2 "shops.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "shops.c" 2
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
# 4 "shops.c" 2
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
# 5 "shops.c" 2
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
# 6 "shops.c" 2
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
# 7 "shops.c" 2
# 1 "music.h" 1


extern const unsigned int hello1_sampleRate;
extern const unsigned int hello1_length;
extern const signed char hello1_data[];


extern const unsigned int Lightyear_City_sampleRate;
extern const unsigned int Lightyear_City_length;
extern const signed char Lightyear_City_data[];
# 8 "shops.c" 2
# 1 "hello2.h" 1


extern const unsigned int hello2_sampleRate;
extern const unsigned int hello2_length;
extern const signed char hello2_data[];
# 9 "shops.c" 2
# 1 "hey1.h" 1


extern const unsigned int hey1_sampleRate;
extern const unsigned int hey1_length;
extern const signed char hey1_data[];
# 10 "shops.c" 2
# 1 "hey2.h" 1


extern const unsigned int hey2_sampleRate;
extern const unsigned int hey2_length;
extern const signed char hey2_data[];
# 11 "shops.c" 2
# 1 "hi2.h" 1


extern const unsigned int hi2_sampleRate;
extern const unsigned int hi2_length;
extern const signed char hi2_data[];
# 12 "shops.c" 2


OBJ_ATTR shadowOAM[128];


extern unsigned short oldButtons;
extern unsigned short buttons;


extern enum STATE {SPLASH, INSTRUCTIONS, PAUSE, OPEN_INVENTORY, STORE, GAME, LOSE, WIN, TEXT} state;
extern enum GAME_STATE {START, HOUSE, SHOPS, AREA1, AREA2} gameState;
extern enum MENU_BUTTONS {PLAY, INSTRUCTS, CONTINUE, MAIN, PARK, POWER_STATION} menuButton;
extern enum LAUNCH_TEXT {A, B, C, D, E, F, CAT, MAP, COMPLETED} ltext;


PLAYER player;

SPRITE plumbob;

extern int pal;


extern void* cm;


extern int hOff0;
extern int vOff0;


WEAPON allWeapons[4];
ITEM allItems[22];


INVENTORY inventory;


NPC people[6];


int ad;
int adTimer;


int toHouse;
int toAreas;
int toStore;
int toText;

void initShops() {

    cm = shopscmBitmap;
    toText = 0;
    if (pal != 0) {
        setColor();
    }

    player.y = 196;
    if (gameState == AREA1 || gameState == AREA2) {
        player.x = 44;
    } else if (state != PAUSE && state != OPEN_INVENTORY && state != STORE && state != TEXT) {
        player.x = 312;
    }

    player.jumping = 0;
    player.falling = 0;
    player.isAttacking = 0;
    player.dealingDamage = 0;
    player.damageBuffer = 0;

    adTimer = 200;
    ad = 0;

    toHouse = 0;
    toAreas = 0;
    toStore = 0;
}

void updateShops() {
    if (toAreas) {
        updateNPC();
        updateAds();
        updateMoveMaps();
    } else {
        toStore = 0;
        plumbob.active = 0;
        updateNPC();
        updatePlayer();
        shadowOAM[player.oamIndex].attr2 |= (((1) & 3) << 10);
        updateAds();

        if (player.x > 230 && player.x < 250 && (!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && (!(~(oldButtons) & ((1 << 1))) && (~(buttons) & ((1 << 1))))) {
            allWeapons[GUN].collected = 1;
        }


        if (toHouse) {
            goToHouse();
        } else if (toText) {
            goToText();
        } else if (toStore) {
            goToStore();
        } else {
            draw();
        }
    }


}

void updateMoveMaps() {
    if ((!(~(oldButtons) & ((1 << 5))) && (~(buttons) & ((1 << 5))))) {
        menuButton = POWER_STATION;
    } else if ((!(~(oldButtons) & ((1 << 4))) && (~(buttons) & ((1 << 4)))) && inventory.area2Map) {
        menuButton = PARK;

    } else if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        if (menuButton == PARK) {
            goToArea2();
        } else {
            goToArea1();
        }
    } else if ((!(~(oldButtons) & ((1 << 1))) && (~(buttons) & ((1 << 1))))) {
        toAreas = 0;
    }
    if (menuButton == PARK) {
        shadowOAM[plumbob.oamIndex].attr0 = ((player.y - vOff0 - 20) & 0xFF) | (1 << 14);
        shadowOAM[plumbob.oamIndex].attr1 = ((player.x - hOff0 - 6) & 0x1FF) | (1 << 14);
        shadowOAM[plumbob.oamIndex].attr2 = (((7) * (32) + (24)) & 0x3FF);
    } else {
        shadowOAM[plumbob.oamIndex].attr0 = ((player.y - vOff0 - 20) & 0xFF) | (1 << 14);
        shadowOAM[plumbob.oamIndex].attr1 = ((player.x - hOff0 - 7) & 0x1FF) | (3 << 14);
        shadowOAM[plumbob.oamIndex].attr2 = (((8) * (32) + (24)) & 0x3FF);
    }
    draw();
}

void plumbobShops(int left, int right) {

    if (left == 1 || right == 1) {
        plumbob.active = 1;
        plumbob.palRow = 8;
        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
            toHouse = 1;
        }
    } else if (left == 2 || right == 2) {
        plumbob.active = 1;
        plumbob.palRow = 8;
        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
            toStore = 1;
        }
    } else if (left == 3 || right == 3) {
        plumbob.active = 1;
        plumbob.palRow = 8;
        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
            toAreas = 1;
            menuButton = POWER_STATION;
        }
    }
}

void updateNPC() {
    for (int i = 0; i < 6; i++) {
        if (!people[i].active) continue;

        if (collision(player.x + 8, player.y, 16, player.height, people[i].x, people[i].y, people[i].width, people[i].height)) {
            if (!people[i].objectiveCompleted) {
                plumbob.active = 1;
                plumbob.palRow = 9;
                if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
                    if (i == 1) {
                        playSoundB(hello1_data, hello1_length, 0);
                        ltext = C;
                        toText = 1;
                    } else if (i == 2) {
                        playSoundB(hey1_data, hey1_length, 0);
                        if (people[i].talk && !people[i].num) {
                            inventory.credits += 500;
                            people[i].objectiveCompleted = 1;
                            ltext = COMPLETED;
                        } else {
                            ltext = E;
                        }
                        toText = 1;
                    } else if (i == 3) {
                        playSoundB(hello2_data, hello2_length, 0);
                        if (people[i].talk && (allWeapons[1].collected || allWeapons[2].collected || allWeapons[3].collected)) {
                            player.baseDamage += 1;
                            people[i].objectiveCompleted = 1;
                            ltext = COMPLETED;
                        } else {
                            ltext = F;
                        }
                        toText = 1;
                    } else if (i == 4) {
                        if (people[i].talk && !people[i].num) {
                            inventory.credits += 500;
                            for(int i = 0; i < 22; i++) {
                                if (!allItems[i].collected) {
                                    allItems[i].collected = 1;
                                    allItems[i].itemType = HEALTH_POTION;
                                    break;
                                }
                            }
                            people[i].objectiveCompleted = 1;
                            ltext = COMPLETED;
                        } else {
                            ltext = D;
                        }
                        toText = 1;
                    } else if (i == 5) {
                        playSoundB(hey2_data, hey2_length, 0);
                        ltext = B;
                        toText = 1;
                    } else {
                        playSoundB(hi2_data, hi2_length, 0);
                        if (people[i].talk && !people[i].num) {
                            inventory.credits += 150;
                            for(int i = 0; i < 22; i++) {
                                if (!allItems[i].collected) {
                                    allItems[i].collected = 1;
                                    allItems[i].itemType = CAKE;
                                    break;
                                }
                            }
                            for(int i = 0; i < 22; i++) {
                                if (!allItems[i].collected) {
                                    allItems[i].collected = 1;
                                    allItems[i].itemType = PANCAKE;
                                    break;
                                }
                            }
                            for(int i = 0; i < 22; i++) {
                                if (!allItems[i].collected) {
                                    allItems[i].collected = 1;
                                    allItems[i].itemType = BURGER;
                                    break;
                                }
                            }
                            people[i].objectiveCompleted = 1;
                            ltext = COMPLETED;
                        } else {
                            ltext = A;
                        }
                        toText = 1;
                    }
                }
            }
        }

        people[i].timeUntilNextFrame--;
        if (people[i].timeUntilNextFrame == 0) {
            people[i].timeUntilNextFrame = 15;
            people[i].currentFrame = (people[i].currentFrame + 1) % people[i].numFrames;
        }

        shadowOAM[people[i].oamIndex].attr0 = ((screenY(people[i].y)) & 0xFF) | (2 << 14);
        shadowOAM[people[i].oamIndex].attr1 = ((screenX(people[i].x)) & 0x1FF) | (2 << 14);
        switch(i) {
            case 0:
                shadowOAM[people[i].oamIndex].attr0 = ((screenY(people[i].y)) & 0xFF) | (0 << 14);
                shadowOAM[people[i].oamIndex].attr1 = ((screenX(people[i].x)) & 0x1FF) | (2 << 14) | (1 << 12);
                shadowOAM[people[i].oamIndex].attr2 = (((24) * (32) + (4 * people[i].currentFrame)) & 0x3FF)| (((1) & 3) << 10) | (((people[i].palRow) & 0xF) << 12);
                break;
            case 1:
                shadowOAM[people[i].oamIndex].attr2 = (((24) * (32) + (2 * people[i].currentFrame + 16)) & 0x3FF)| (((1) & 3) << 10) | (((people[i].palRow) & 0xF) << 12);
                if (player.x < people[i].x) shadowOAM[people[i].oamIndex].attr1 |= (1 << 12);
                break;
            case 2:
                shadowOAM[people[i].oamIndex].attr2 = (((24) * (32) + (2 * people[i].currentFrame + 24)) & 0x3FF) | (((1) & 3) << 10) | (((people[i].palRow) & 0xF) << 12);
                break;
            case 3:
                shadowOAM[people[i].oamIndex].attr2 = (((28) * (32) + (2 * people[i].currentFrame + 24)) & 0x3FF)| (((1) & 3) << 10) | (((people[i].palRow) & 0xF) << 12);
                break;
            case 4:
                shadowOAM[people[i].oamIndex].attr0 = ((screenY(people[i].y)) & 0xFF) | (0 << 14);
                shadowOAM[people[i].oamIndex].attr1 = ((screenX(people[i].x)) & 0x1FF) | (2 << 14);
                shadowOAM[people[i].oamIndex].attr2 = (((28) * (32) + (4 * people[i].currentFrame)) & 0x3FF)| (((1) & 3) << 10) | (((people[i].palRow) & 0xF) << 12);
                shadowOAM[people[i].oamIndex].attr1 |= (1 << 12);
                break;
            case 5:
                shadowOAM[people[i].oamIndex].attr1 |= (1 << 12);
                shadowOAM[people[i].oamIndex].attr2 = (((28) * (32) + (2 * people[i].currentFrame + 16)) & 0x3FF)| (((1) & 3) << 10) | (((people[i].palRow) & 0xF) << 12);
                break;
        }
    }

}

void updateAds() {
    adTimer--;
    if (!adTimer) {
        adTimer = 200;
        ad = (ad + 1) % 3;
        (((SB*) 0x06000000)[18].tilemap[((11) * (32) + (28))] = (450 + 3 * ad));
        (((SB*) 0x06000000)[18].tilemap[((11) * (32) + (29))] = (451 + 3 * ad));
        (((SB*) 0x06000000)[18].tilemap[((11) * (32) + (30))] = (452 + 3 * ad));

        (((SB*) 0x06000000)[18].tilemap[((12) * (32) + (28))] = (475 + 3 * ad));
        (((SB*) 0x06000000)[18].tilemap[((12) * (32) + (29))] = (476 + 3 * ad));
        (((SB*) 0x06000000)[18].tilemap[((12) * (32) + (30))] = (477 + 3 * ad));

        (((SB*) 0x06000000)[18].tilemap[((13) * (32) + (28))] = (500 + 3 * ad));
        (((SB*) 0x06000000)[18].tilemap[((13) * (32) + (29))] = (501 + 3 * ad));
        (((SB*) 0x06000000)[18].tilemap[((13) * (32) + (30))] = (502 + 3 * ad));

        (((SB*) 0x06000000)[18].tilemap[((14) * (32) + (28))] = (525 + 3 * ad));
        (((SB*) 0x06000000)[18].tilemap[((14) * (32) + (29))] = (526 + 3 * ad));
        (((SB*) 0x06000000)[18].tilemap[((14) * (32) + (30))] = (527 + 3 * ad));

        (((SB*) 0x06000000)[18].tilemap[((15) * (32) + (28))] = (550 + 3 * ad));
        (((SB*) 0x06000000)[18].tilemap[((15) * (32) + (29))] = (551 + 3 * ad));
        (((SB*) 0x06000000)[18].tilemap[((15) * (32) + (30))] = (552 + 3 * ad));
    }
}

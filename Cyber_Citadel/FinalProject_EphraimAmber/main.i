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
# 1 "digitalSound.h" 1



void setupSounds();
void setupSoundInterrupts();
void interruptHandler();

void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 52 "digitalSound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 6 "main.c" 2
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
# 7 "main.c" 2
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
# 8 "main.c" 2
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
# 9 "main.c" 2

# 1 "music.h" 1


extern const unsigned int hello1_sampleRate;
extern const unsigned int hello1_length;
extern const signed char hello1_data[];


extern const unsigned int Lightyear_City_sampleRate;
extern const unsigned int Lightyear_City_length;
extern const signed char Lightyear_City_data[];
# 11 "main.c" 2
# 1 "pinkBloom.h" 1


extern const unsigned int pinkBloom_sampleRate;
extern const unsigned int pinkBloom_length;
extern const signed char pinkBloom_data[];
# 12 "main.c" 2
# 1 "theHiddenOne.h" 1


extern const unsigned int theHiddenOne_sampleRate;
extern const unsigned int theHiddenOne_length;
extern const signed char theHiddenOne_data[];
# 13 "main.c" 2
# 1 "toTheUnknown.h" 1


extern const unsigned int toTheUnknown_sampleRate;
extern const unsigned int toTheUnknown_length;
extern const signed char toTheUnknown_data[];
# 14 "main.c" 2
# 1 "valleyofSpirits.h" 1


extern const unsigned int valleyofSpirits_sampleRate;
extern const unsigned int valleyofSpirits_length;
extern const signed char valleyofSpirits_data[];
# 15 "main.c" 2
# 1 "openInventory.h" 1


extern const unsigned int openInventory_sampleRate;
extern const unsigned int openInventory_length;
extern const signed char openInventory_data[];
# 16 "main.c" 2



enum STATE {SPLASH, INSTRUCTIONS, PAUSE, OPEN_INVENTORY, STORE, GAME, LOSE, WIN, TEXT} state;
enum GAME_STATE {START, HOUSE, SHOPS, AREA1, AREA2, FINAL} gameState;
enum MENU_BUTTONS {PLAY, INSTRUCTS, CONTINUE, MAIN, PARK, POWER_STATION} menuButton;
enum LAUNCH_TEXT {A, B, C, D, E, F, CAT, MAP, COMPLETED} ltext;
int switchingStates;


OBJ_ATTR shadowOAM[128];


unsigned short oldButtons;
unsigned short buttons;


int hOff0;
int vOff0;
int hOff1;
int vOff1;
int hOff2;
int vOff2;
int mapWidth;
int mapHeight;


int fromPause;
int fromStart;


int x;
int y;
int currentFrame;
int timeUntilNextFrame;
int numFrames;

int main() {
    initialize();

    while(1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short*) 0x04000130);

        switch(state) {
            case SPLASH:
                if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2)))) || (!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
                    if (menuButton == PLAY) {
                        goToGame();
                    } else {
                        fromPause = 0;
                        fromStart = 1;
                        goToInstructions();
                    }
                } else {
                    splash();
                }
                break;
            case INSTRUCTIONS:
                if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2)))) || (!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
                    if (fromPause) {
                        goToPause();
                    } else {
                        goToSplash();
                    }
                }
                break;
            case PAUSE:
                if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2)))) || (!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
                    switchingStates = 1;
                }
                pause();
                break;
            case OPEN_INVENTORY:
                if ((!(~(oldButtons) & ((1 << 8))) && (~(buttons) & ((1 << 8))))) {
                    goToGame();
                } else {
                    updateInventory();
                }
                break;
            case STORE:
                updateStore();
                break;
            case GAME:
                if ((!(~(oldButtons) & ((1 << 8))) && (~(buttons) & ((1 << 8))))) {
                    goToInventory();
                } else if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
                    goToPause();
                } else {
                    goToGame();
                }
                break;
            case TEXT:
                updateText();
                break;
            case LOSE:
            case WIN:
                if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) goToSplash();
                break;
        }
    }
}

void initialize() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14) | (0 << 7);
    mgba_open();


    oldButtons = 0;
    buttons = (*(volatile unsigned short*) 0x04000130);


    x = 0;
    y = 0;


    switchingStates = 0;


    setupSounds();

    initGame();
    gameState = START;
    goToPause();
    pause();
    goToSplash();
}





void goToSplash() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14) | (0 << 7);

    DMANow(3, splashTiles, &((CB*) 0x06000000)[0], 15360/2);
    DMANow(3, splashPal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, splashMap, &((SB*) 0x06000000)[28], (2048)/2);


    DMANow(3, interfaceSSPal, ((u16*) 0x5000200), 512/2);
    DMANow(3, interfaceSSTiles, &((CB*) 0x06000000)[4], 32768/2);

    hideSprites();


    hOff0 = 0;
    vOff0 = 0;
    mapWidth = (32) * 8;
    mapHeight = (32) * 8;


    menuButton = PLAY;

    shadowOAM[0].attr0 = ((56) & 0xFF) | (1 << 14);
    shadowOAM[0].attr1 = ((49) & 0x1FF) | (0 << 14);
    shadowOAM[0].attr2 = (((1) * (32) + (1)) & 0x3FF);


    shadowOAM[1].attr0 = ((56) & 0xFF) | (0 << 14);
    shadowOAM[1].attr1 = ((70) & 0x1FF) | (0 << 14);
    shadowOAM[1].attr2 = (((0) * (32) + (1)) & 0x3FF);

    draw();


    if (state != INSTRUCTIONS) {
        playSoundA(valleyofSpirits_data, valleyofSpirits_length, 1);
    }


    state = SPLASH;
}
void splash() {
    if ((!(~(oldButtons) & ((1 << 6))) && (~(buttons) & ((1 << 6)))) || (!(~(oldButtons) & ((1 << 7))) && (~(buttons) & ((1 << 7))))) {
        if (menuButton == PLAY) {
            menuButton = INSTRUCTS;
        } else {
            menuButton = PLAY;
        }
    }

    if (menuButton == PLAY) {

        shadowOAM[0].attr0 = ((56) & 0xFF) | (1 << 14);
        shadowOAM[0].attr1 = ((49) & 0x1FF) | (0 << 14);
        shadowOAM[0].attr2 = (((1) * (32) + (1)) & 0x3FF);


        shadowOAM[1].attr0 = ((56) & 0xFF) | (0 << 14);
        shadowOAM[1].attr1 = ((70) & 0x1FF) | (0 << 14);
        shadowOAM[1].attr2 = (((0) * (32) + (1)) & 0x3FF);
    } else if (menuButton == INSTRUCTS) {

        shadowOAM[0].attr0 = ((80) & 0xFF) | (1 << 14);
        shadowOAM[0].attr1 = ((49) & 0x1FF) | (3 << 14);
        shadowOAM[0].attr2 = (((2) * (32) + (1)) & 0x3FF);


        shadowOAM[1].attr0 = ((80) & 0xFF) | (0 << 14);
        shadowOAM[1].attr1 = ((106) & 0x1FF) | (0 << 14);
        shadowOAM[1].attr2 = (((0) * (32) + (1)) & 0x3FF);
    }
    draw();

}


void goToInstructions() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14) | (0 << 7);

    DMANow(3, instructionsAndPauseTiles, &((CB*) 0x06000000)[0], 12800/2);
    DMANow(3, instructionsAndPausePal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, instructionsMap, &((SB*) 0x06000000)[28], (2048)/2);

    DMANow(3, interfaceSSPal, ((u16*) 0x5000200), 512/2);
    DMANow(3, interfaceSSTiles, &((CB*) 0x06000000)[4], 32768/2);

    hOff0 = 0;
    vOff0 = 0;
    mapWidth = (32) * 8;
    mapHeight = (32) * 8;

    hideSprites();

    draw();


    state = INSTRUCTIONS;
}


void goToPause() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14) | (0 << 7);
    (*(volatile unsigned short*) 0x0400000A) = ((0) << 2) | ((27) << 8) | (0 << 14) | (0 << 7);

    DMANow(3, instructionsAndPauseTiles, &((CB*) 0x06000000)[0], 12800/2);
    DMANow(3, instructionsAndPausePal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, pauseMap, &((SB*) 0x06000000)[28], (2048)/2);
    DMANow(3, skyMap, &((SB*) 0x06000000)[27], (2048)/2);

    DMANow(3, interfaceSSPal, ((u16*) 0x5000200), 512/2);
    DMANow(3, interfaceSSTiles, &((CB*) 0x06000000)[4], 32768/2);

    hideSprites();


    x = 8;
    y = 216;
    currentFrame = 0;
    numFrames = 6;
    timeUntilNextFrame = 10;
    hOff0 = x - (240 - 16) / 2;
    vOff0 = 96;
    hOff1 = 0;
    vOff1 = 0;
    mapWidth = (32) * 8;
    mapHeight = (32) * 8;


    shadowOAM[0].attr0 = ((y - vOff0) & 0xFF) | (2 << 14);
    shadowOAM[0].attr1 = ((x) & 0x1FF) | (2 << 14);
    shadowOAM[0].attr2 = (((6) * (32) + (0)) & 0x3FF);


    shadowOAM[2].attr0 = ((8) & 0xFF) | (1 << 14);
    shadowOAM[2].attr1 = ((3) & 0x1FF) | (3 << 14);
    shadowOAM[2].attr2 = (((2) * (32) + (17)) & 0x3FF);


    shadowOAM[3].attr0 = ((19) & 0xFF) | (1 << 14);
    shadowOAM[3].attr1 = ((3) & 0x1FF) | (1 << 14);
    shadowOAM[3].attr2 = (((1) * (32) + (3)) & 0x3FF);


    shadowOAM[4].attr0 = ((30) & 0xFF) | (1 << 14);
    shadowOAM[4].attr1 = ((3) & 0x1FF) | (3 << 14);
    shadowOAM[4].attr2 = (((2) * (32) + (1)) & 0x3FF);


    shadowOAM[5].attr0 = ((8) & 0xFF) | (0 << 14);
    shadowOAM[5].attr1 = ((43) & 0x1FF) | (0 << 14);
    shadowOAM[5].attr2 = (((0) * (32) + (2)) & 0x3FF);


    draw();


    pauseSounds();


    state = PAUSE;
    menuButton = CONTINUE;
}
void pause() {
    if (!switchingStates) {
        if (menuButton == CONTINUE) {

            shadowOAM[1].attr0 = ((8) & 0xFF) | (1 << 14);
            shadowOAM[1].attr1 = ((3) & 0x1FF) | (3 << 14);
            shadowOAM[1].attr2 = (((2) * (32) + (9)) & 0x3FF);

            shadowOAM[5].attr0 = ((8) & 0xFF) | (0 << 14);
            shadowOAM[5].attr1 = ((45) & 0x1FF) | (0 << 14);
            shadowOAM[5].attr2 = (((0) * (32) + (2)) & 0x3FF);
            if ((!(~(oldButtons) & ((1 << 6))) && (~(buttons) & ((1 << 6))))) {
                menuButton = INSTRUCTS;
            } else if ((!(~(oldButtons) & ((1 << 7))) && (~(buttons) & ((1 << 7))))) {
                menuButton = MAIN;
            }
        } else if (menuButton == MAIN) {

            shadowOAM[1].attr0 = ((19) & 0xFF) | (1 << 14);
            shadowOAM[1].attr1 = ((3) & 0x1FF) | (1 << 14);
            shadowOAM[1].attr2 = (((1) * (32) + (7)) & 0x3FF);

            shadowOAM[5].attr0 = ((19) & 0xFF) | (0 << 14);
            shadowOAM[5].attr1 = ((38) & 0x1FF) | (0 << 14);
            shadowOAM[5].attr2 = (((0) * (32) + (2)) & 0x3FF);
            if ((!(~(oldButtons) & ((1 << 6))) && (~(buttons) & ((1 << 6))))) {
                menuButton = CONTINUE;
            } else if ((!(~(oldButtons) & ((1 << 7))) && (~(buttons) & ((1 << 7))))) {
                menuButton = INSTRUCTS;
            }
        } else if (menuButton == INSTRUCTS) {

            shadowOAM[1].attr0 = ((30) & 0xFF) | (1 << 14);
            shadowOAM[1].attr1 = ((3) & 0x1FF) | (3 << 14);
            shadowOAM[1].attr2 = (((2) * (32) + (25)) & 0x3FF);

            shadowOAM[5].attr0 = ((30) & 0xFF) | (0 << 14);
            shadowOAM[5].attr1 = ((63) & 0x1FF) | (0 << 14);
            shadowOAM[5].attr2 = (((0) * (32) + (2)) & 0x3FF);
            if ((!(~(oldButtons) & ((1 << 6))) && (~(buttons) & ((1 << 6))))) {
                menuButton = MAIN;
            } else if ((!(~(oldButtons) & ((1 << 7))) && (~(buttons) & ((1 << 7))))) {
                menuButton = CONTINUE;
            }
        }

        x += 2;
        hOff0 = x - (240 - 16) / 2;
        hOff1++;
        timeUntilNextFrame--;
        if (timeUntilNextFrame == 0) {
            currentFrame = (currentFrame + 1) % numFrames;
            timeUntilNextFrame = 10;
        }

        shadowOAM[0].attr0 = ((y - vOff0) & 0xFF) | (0 << 14);
        shadowOAM[0].attr1 = ((x - hOff0) & 0x1FF) | (2 << 14);
        shadowOAM[0].attr2 = (((6) * (32) + (currentFrame * 4)) & 0x3FF);
        draw();
    } else {
        x += 2;
        if (x - hOff0 > 240) {
            switchingStates = 0;
            if (menuButton == CONTINUE) {
                goToGame();
            } else if (menuButton == MAIN) {
                goToSplash();
            } else {
                fromPause = 1;
                fromStart = 0;
                goToInstructions();
            }
        } else {
            timeUntilNextFrame--;
            if (timeUntilNextFrame == 0) {
                currentFrame = (currentFrame + 1) % numFrames;
                timeUntilNextFrame = 10;
            }

            shadowOAM[0].attr0 = ((y - vOff0) & 0xFF) | (0 << 14);
            shadowOAM[0].attr1 = ((x - hOff0) & 0x1FF) | (2 << 14);
            shadowOAM[0].attr2 = (((6) * (32) + (currentFrame * 4)) & 0x3FF);
            draw();
        }
    }
}


void goToInventory() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14) | (0 << 7);

    DMANow(3, inventoryTiles, &((CB*) 0x06000000)[0], 12800/2);
    DMANow(3, inventoryPal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, inventoryMap, &((SB*) 0x06000000)[28], (2048)/2);

    DMANow(3, interfaceSSPal, ((u16*) 0x5000200), 512/2);
    DMANow(3, interfaceSSTiles, &((CB*) 0x06000000)[4], 32768/2);

    hOff0 = 0;
    vOff0 = 0;
    mapWidth = (32) * 8;
    mapHeight = (32) * 8;

    hideSprites();

    initInventory();

    playSoundB(openInventory_data, openInventory_length, 0);

    draw();


    state = OPEN_INVENTORY;
}


void goToStore() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14) | (0 << 7);

    DMANow(3, inventoryTiles, &((CB*) 0x06000000)[0], 12800/2);
    DMANow(3, inventoryPal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, storeMap, &((SB*) 0x06000000)[28], (2048)/2);

    DMANow(3, interfaceSSPal, ((u16*) 0x5000200), 512/2);
    DMANow(3, interfaceSSTiles, &((CB*) 0x06000000)[4], 32768/2);

    hOff0 = 0;
    vOff0 = 0;
    mapWidth = (32) * 8;
    mapHeight = (32) * 8;

    hideSprites();

    initStore();

    playSoundB(openInventory_data, openInventory_length, 0);

    draw();


    state = STORE;
}


void goToWin() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14) | (0 << 7);

    DMANow(3, textTiles, &((CB*) 0x06000000)[0], 12000/2);
    DMANow(3, textPal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, winMap, &((SB*) 0x06000000)[28], (2048)/2);

    hOff0 = 0;
    vOff0 = 0;
    mapWidth = (32) * 8;
    mapHeight = (32) * 8;

    hideSprites();
    initGame();

    draw();

    state = WIN;
    gameState = HOUSE;
}


void goToLose() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14) | (0 << 7);

    DMANow(3, textTiles, &((CB*) 0x06000000)[0], 12000/2);
    DMANow(3, textPal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, loseMap, &((SB*) 0x06000000)[28], (2048)/2);

    hOff0 = 0;
    vOff0 = 0;
    mapWidth = (32) * 8;
    mapHeight = (32) * 8;

    hideSprites();

    draw();


    state = LOSE;
    gameState = SHOPS;
}

void goToText() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14) | (0 << 7);

    DMANow(3, textTiles, &((CB*) 0x06000000)[0], 12000/2);
    DMANow(3, textPal, ((unsigned short*) 0x05000000), 512/2);
    hideSprites();
    shadowOAM[0].attr0 = ((16) & 0xFF) | (1 << 14);
    shadowOAM[0].attr1 = ((16) & 0x1FF) | (3 << 14);

    switch(ltext) {
        case A:
        shadowOAM[0].attr2 = (((0) * (32) + (1)) & 0x3FF) | (((1) & 0xF) << 12);
        DMANow(3, text1Map, &((SB*) 0x06000000)[28], (2048)/2);
        break;
        case B:
        shadowOAM[0].attr2 = (((20) * (32) + (1)) & 0x3FF) | (((7) & 0xF) << 12);
        DMANow(3, text2Map, &((SB*) 0x06000000)[28], (2048)/2);
        break;
        case C:
        shadowOAM[0].attr2 = (((4) * (32) + (1)) & 0x3FF) | (((2) & 0xF) << 12);
        DMANow(3, text3Map, &((SB*) 0x06000000)[28], (2048)/2);
        break;
        case D:
        shadowOAM[0].attr2 = (((16) * (32) + (1)) & 0x3FF) | (((6) & 0xF) << 12);
        DMANow(3, text4Map, &((SB*) 0x06000000)[28], (2048)/2);
        break;
        case E:
        shadowOAM[0].attr2 = (((8) * (32) + (1)) & 0x3FF) | (((3) & 0xF) << 12);
        DMANow(3, text5Map, &((SB*) 0x06000000)[28], (2048)/2);
        break;
        case F:
        shadowOAM[0].attr2 = (((12) * (32) + (1)) & 0x3FF) | (((5) & 0xF) << 12);
        DMANow(3, text6Map, &((SB*) 0x06000000)[28], (2048)/2);
        break;
        case CAT:
        shadowOAM[0].attr2 = (((24) * (32) + (1)) & 0x3FF) | (((0) & 0xF) << 12);
        DMANow(3, textCatMap, &((SB*) 0x06000000)[28], (2048)/2);
        break;
        case MAP:
        DMANow(3, textMapMap, &((SB*) 0x06000000)[28], (2048)/2);
        shadowOAM[0].attr0 = ((88) & 0xFF) | (1 << 14);
        shadowOAM[0].attr1 = ((176) & 0x1FF) | (3 << 14);
        shadowOAM[0].attr2 = (((28) * (32) + (1)) & 0x3FF) | (((0) & 0xF) << 12);
        break;
        case COMPLETED:
        shadowOAM[0].attr0 = (2 << 8);
        DMANow(3, completedTextMap, &((SB*) 0x06000000)[28], (2048)/2);
        break;
    }

    DMANow(3, textSSPal, ((u16*) 0x5000200), 512/2);
    DMANow(3, textSSTiles, &((CB*) 0x06000000)[4], 32768/2);
    hOff0 = 0;
    vOff0 = 0;
    draw();
    state = TEXT;
}






void goToGame() {
    switch(gameState) {
    case START:
    case HOUSE:
        if (state != GAME) {
            goToHouse();
        } else {
            updateHouse();
        }
        break;
    case SHOPS:
        if (state != GAME) {
            goToShops();
        } else {
            updateShops();
        }
        break;
    case AREA1:
        if (state != GAME) {
            goToArea1();
        } else {
            updateArea1();
        }
        break;
    case AREA2:
        if (state != GAME) {
            goToArea2();
        } else {
            updateArea2();
        }
        break;
    case FINAL:
        if (state != GAME) {
            goToFinal();
        } else {
            updateFinal();
        }
        break;
    }
}

void goToHouse() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (1 << 14) | (0 << 7);

    DMANow(3, houseTiles, &((CB*) 0x06000000)[0], 12800/2);
    DMANow(3, housePal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, houseMap, &((SB*) 0x06000000)[28], (4096)/2);

    DMANow(3, mainSSPal, ((u16*) 0x5000200), 512/2);
    DMANow(3, mainSSTiles, &((CB*) 0x06000000)[4], 32768/2);
    hideSprites();

    initHouse();

    mapWidth = (64) * 8;
    mapHeight = (32) * 8;
    hOff0 = 0;
    vOff0 = 0;

    draw();


    if (state == PAUSE || state == OPEN_INVENTORY || state == TEXT) {
        unpauseSounds();
    } else if (gameState != HOUSE || gameState != SHOPS) {
        playSoundA(Lightyear_City_data, Lightyear_City_length, 1);
    }


    state = GAME;
    gameState = HOUSE;
}

void goToShops() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((16) << 8) | (1 << 14);
    (*(volatile unsigned short*) 0x0400000A) = ((0) << 2) | ((18) << 8) | (1 << 14) | 1;
    (*(volatile unsigned short*) 0x0400000C) = ((0) << 2) | ((20) << 8) | (0 << 14) | 2;

    DMANow(3, shopsTiles, &((CB*) 0x06000000)[0], 20000/2);
    DMANow(3, shopsPal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, shopsBG0Map, &((SB*) 0x06000000)[16], (4096)/2);
    DMANow(3, shopsBG1Map, &((SB*) 0x06000000)[18], (4096)/2);
    DMANow(3, shopsSkyMap, &((SB*) 0x06000000)[20], (2048)/2);

    DMANow(3, mainSSPal, ((u16*) 0x5000200), 512/2);
    DMANow(3, mainSSTiles, &((CB*) 0x06000000)[4], 32768/2);
    hideSprites();

    initShops();

    mapWidth = (64) * 8;
    mapHeight = (32) * 8;

    draw();


    if (state == PAUSE || state == OPEN_INVENTORY || state == TEXT) {
        unpauseSounds();
    } else if (gameState != HOUSE) {
        playSoundA(Lightyear_City_data, Lightyear_City_length, 1);
    }


    state = GAME;
    gameState = SHOPS;
}

void goToArea1() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((16) << 8) | (3 << 14);
    (*(volatile unsigned short*) 0x0400000A) = ((0) << 2) | ((20) << 8) | (3 << 14) | 1;
    (*(volatile unsigned short*) 0x0400000C) = ((0) << 2) | ((24) << 8) | (2 << 14) | 2;


    DMANow(3, area1Tiles, &((CB*) 0x06000000)[0], 32768/2);
    DMANow(3, area1Pal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, area1BG0Map, &((SB*) 0x06000000)[16], (8192)/2);
    DMANow(3, area1BG1Map, &((SB*) 0x06000000)[20], (8192)/2);
    DMANow(3, area1BG2Map, &((SB*) 0x06000000)[24], (4096)/2);

    DMANow(3, area1SSPal, ((u16*) 0x5000200), 512/2);
    DMANow(3, area1SSTiles, &((CB*) 0x06000000)[4], 32768/2);
    hideSprites();

    initArea1();

    mapWidth = (64) * 8;
    mapHeight = (64) * 8;

    hOff2 = 0;
    draw();


    if (state == PAUSE || state == OPEN_INVENTORY || state == TEXT) {
        unpauseSounds();
    } else if (gameState != AREA1) {
        playSoundA(pinkBloom_data, pinkBloom_length, 1);
    }


    state = GAME;
    gameState = AREA1;
}

void goToArea2() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((16) << 8) | (3 << 14);
    (*(volatile unsigned short*) 0x0400000A) = ((0) << 2) | ((20) << 8) | (2 << 14) | 1;


    DMANow(3, area2Tiles, &((CB*) 0x06000000)[0], 32768/2);
    DMANow(3, area2Pal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, area2BG0Map, &((SB*) 0x06000000)[16], (8192)/2);
    DMANow(3, area2BG1Map, &((SB*) 0x06000000)[20], (4096)/2);

    DMANow(3, area2SSPal, ((u16*) 0x5000200), 512/2);
    DMANow(3, area2SSTiles, &((CB*) 0x06000000)[4], 32768/2);
    hideSprites();

    initArea2();

    mapWidth = (64) * 8;
    mapHeight = (64) * 8;

    hOff1 = 0;
    draw();


    if (state == PAUSE || state == OPEN_INVENTORY) {
        unpauseSounds();
    } else if (gameState != AREA2) {
        playSoundA(toTheUnknown_data, toTheUnknown_length, 1);
    }


    state = GAME;
    gameState = AREA2;
}

void goToFinal() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((16) << 8) | (1 << 14);
    (*(volatile unsigned short*) 0x0400000A) = ((0) << 2) | ((20) << 8) | (0 << 14) | 1;


    DMANow(3, area2Tiles, &((CB*) 0x06000000)[0], 32768/2);
    DMANow(3, area2Pal, ((unsigned short*) 0x05000000), 512/2);
    DMANow(3, finalBG0Map, &((SB*) 0x06000000)[16], (8192)/2);
    DMANow(3, finalBG1Map, &((SB*) 0x06000000)[20], (4096)/2);

    DMANow(3, finalSSPal, ((u16*) 0x5000200), 512/2);
    DMANow(3, finalSSTiles, &((CB*) 0x06000000)[4], 32768/2);
    hideSprites();

    initFinal();

    mapWidth = (64) * 8;
    mapHeight = (32) * 8;

    vOff1 = 10;
    draw();


    if (state == PAUSE || state == OPEN_INVENTORY) {
        unpauseSounds();
    } else if (gameState != FINAL) {
        playSoundA(theHiddenOne_data, theHiddenOne_length, 1);
    }


    state = GAME;
    gameState = FINAL;
}

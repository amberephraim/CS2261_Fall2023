# 1 "store.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "store.c"
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
# 2 "store.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "store.c" 2
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
# 4 "store.c" 2
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
# 5 "store.c" 2
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
# 6 "store.c" 2
# 1 "move.h" 1


extern const unsigned int move_sampleRate;
extern const unsigned int move_length;
extern const signed char move_data[];
# 7 "store.c" 2


OBJ_ATTR shadowOAM[128];


unsigned short oldButtons;
unsigned short buttons;


PLAYER player;


WEAPON allWeapons[4];
ITEM allItems[22];

INVENTORY inventory;


SPRITE coin;


SPRITE select;
int index;


SPRITE exit;
int toShops;


SPRITE description;
SPRITE boost;
SPRITE price;


ITEM storeItems[7];


void initStore() {

    toShops = 0;

    if (allWeapons[GUN].collected) {
        inventory.credits = 9999;
    }

    coin.x = 171;
    coin.y = 12;
    coin.timeUntilNextFrame = 10;
    coin.currentFrame = 0;
    coin.numFrames = 5;
    coin.oamIndex = 1;

    updateCredits();



    description.oamIndex = 7;
    description.y = 24;
    description.x = 24;

    boost.oamIndex = 8;
    boost.y = 32;
    boost.x = 24;

    price.oamIndex = 9;
    price.x = 34;
    price.y = 52;

    ITEM a = {128, 48, LOLLY, 50};
    ITEM b = {152, 48, CAKE, 90};
    ITEM c = {176, 48, PANCAKE, 130};
    ITEM d = {200, 48, BURGER, 175};
    ITEM e = {128, 72, DEFENSE_POTION, 425};
    ITEM f = {152, 72, HEALTH_POTION, 425};
    ITEM g = {176, 72, DAMAGE_POTION, 425};
    storeItems[0] = a;
    storeItems[1] = b;
    storeItems[2] = c;
    storeItems[3] = d;
    storeItems[4] = e;
    storeItems[5] = f;
    storeItems[6] = g;


    index = 0;
    select.x = 128;
    select.y = 48;
    select.xVel = 1;
    select.yVel = 1;
    select.xVel = 24;
    select.yVel = 24;
    select.oamIndex = 0;

    shadowOAM[select.oamIndex].attr0 = ((select.y) & 0xFF) | (0 << 14);
    shadowOAM[select.oamIndex].attr1 = ((select.x) & 0x1FF) | (1 << 14);
    shadowOAM[select.oamIndex].attr2 = (((12) * (32) + (6)) & 0x3FF);

    exit.x = 8;
    exit.y = 144;
    exit.oamIndex = 65;
    shadowOAM[exit.oamIndex].attr0 = ((exit.y) & 0xFF) | (1 << 14);
    shadowOAM[exit.oamIndex].attr1 = ((exit.x) & 0x1FF) | (0 << 14);
    shadowOAM[exit.oamIndex].attr2 = (((10) * (32) + (10)) & 0x3FF);


    if (allWeapons[1].collected) {
        (((SB*) 0x06000000)[28].tilemap[((12) * (32) + (16))] = (54));
        (((SB*) 0x06000000)[28].tilemap[((12) * (32) + (17))] = (56));
        (((SB*) 0x06000000)[28].tilemap[((13) * (32) + (16))] = (104));
        (((SB*) 0x06000000)[28].tilemap[((13) * (32) + (17))] = (106));
    }
    if (allWeapons[2].collected) {
        (((SB*) 0x06000000)[28].tilemap[((12) * (32) + (19))] = (54));
        (((SB*) 0x06000000)[28].tilemap[((12) * (32) + (20))] = (56));
        (((SB*) 0x06000000)[28].tilemap[((13) * (32) + (19))] = (104));
        (((SB*) 0x06000000)[28].tilemap[((13) * (32) + (20))] = (106));
    }
}

void updateStore() {

    if ((!(~(oldButtons) & ((1 << 7))) && (~(buttons) & ((1 << 7)))) && select.y < 120) {
        if ((select.y == 48 && select.x == 200)
            || (select.y == 72 && select.x == 176)) {
            select.x -= select.xVel;
        }
        playSoundB(move_data, move_length, 0);
        select.y += select.yVel;
    } else if ((!(~(oldButtons) & ((1 << 6))) && (~(buttons) & ((1 << 6)))) && select.y > 48) {
        select.y -= select.yVel;
        playSoundB(move_data, move_length, 0);
    }
    if ((!(~(oldButtons) & ((1 << 5))) && (~(buttons) & ((1 << 5)))) && select.x > 128) {
        select.x -= select.xVel;
        playSoundB(move_data, move_length, 0);
    } else if ((!(~(oldButtons) & ((1 << 4))) && (~(buttons) & ((1 << 4))))) {
        if ((select.y == 48 && select.x < 200)
            || (select.y == 72 && select.x < 176)
            || (select.y == 96 && select.x < 152)) {
            select.x += select.xVel;
            playSoundB(move_data, move_length, 0);
        }
    }
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        playSoundB(move_data, move_length, 0);
        if (select.y == 120) {
            toShops = 1;
        } else if (select.y == 96) {
            if (select.x == 128) {
                if (inventory.credits >= 500 && !allWeapons[1].collected) {
                    allWeapons[1].collected = 1;
                    inventory.credits -= 500;
                    (((SB*) 0x06000000)[28].tilemap[((12) * (32) + (16))] = (54));
                    (((SB*) 0x06000000)[28].tilemap[((12) * (32) + (17))] = (56));
                    (((SB*) 0x06000000)[28].tilemap[((13) * (32) + (16))] = (104));
                    (((SB*) 0x06000000)[28].tilemap[((13) * (32) + (17))] = (106));
                }
            } else {
                if (inventory.credits >= 1000 && !allWeapons[2].collected) {
                    allWeapons[2].collected = 1;
                    inventory.credits -= 1000;
                    (((SB*) 0x06000000)[28].tilemap[((12) * (32) + (19))] = (54));
                    (((SB*) 0x06000000)[28].tilemap[((12) * (32) + (20))] = (56));
                    (((SB*) 0x06000000)[28].tilemap[((13) * (32) + (19))] = (104));
                    (((SB*) 0x06000000)[28].tilemap[((13) * (32) + (20))] = (106));
                }
            }
        } else {
            for (int i = 0; i < 7; i++) {
                if (select.x == storeItems[i].x && select.y == storeItems[i].y) {
                    if (inventory.credits - storeItems[i].price >= 0) {
                        for (int j = 0; j < 22; j++) {
                            if (!allItems[j].collected) {
                                inventory.credits -= storeItems[i].price;
                                allItems[j].collected = 1;
                                allItems[j].used = 0;
                                allItems[j].itemType = storeItems[i].itemType;
                                break;
                            }
                        }
                    }
                    break;
                }
            }
        }

    }

    shadowOAM[select.oamIndex].attr0 = ((select.y) & 0xFF) | (0 << 14);
    shadowOAM[select.oamIndex].attr1 = ((select.x) & 0x1FF) | (1 << 14);
    shadowOAM[select.oamIndex].attr2 = (((12) * (32) + (6)) & 0x3FF);
    shadowOAM[exit.oamIndex].attr2 = (((10) * (32) + (10)) & 0x3FF);
    if (select.y == 120) {
        shadowOAM[select.oamIndex].attr0 |= (2 << 8);
        shadowOAM[exit.oamIndex].attr2 = (((11) * (32) + (10)) & 0x3FF);
    }

    if (toShops) {
        goToShops();
    } else {
        updateCredits();
        updateItem();
        draw();
    }
}

void updateCredits() {

    coin.timeUntilNextFrame--;
    if (coin.timeUntilNextFrame == 0) {
        coin.timeUntilNextFrame = 10;
        coin.currentFrame = (coin.currentFrame + 1) % coin.numFrames;
    }

    shadowOAM[coin.oamIndex].attr0 = ((coin.y) & 0xFF) | (0 << 14);
    shadowOAM[coin.oamIndex].attr1 = ((coin.x) & 0x1FF) | (1 << 14);
    shadowOAM[coin.oamIndex].attr2 = (((10) * (32) + (coin.currentFrame * 2)) & 0x3FF);

    int ten = (inventory.credits / 10) % 10;
    int hun = (inventory.credits / 100) % 10;
    int thou = (inventory.credits / 1000) % 10;
    int ones = inventory.credits % 10;
    int spacing = 0;

    if (thou > 0) {

        shadowOAM[2].attr0 = ((15) & 0xFF) | (0 << 14);
        shadowOAM[2].attr1 = ((190) & 0x1FF) | (0 << 14);
        shadowOAM[2].attr2 = (((1) * (32) + (11 + thou)) & 0x3FF);
        spacing += 6;
    } else {
        shadowOAM[2].attr0 = (2 << 8);
    }

    if (hun > 0 || thou > 0) {
       shadowOAM[3].attr0 = ((15) & 0xFF) | (0 << 14);
        shadowOAM[3].attr1 = ((190 + spacing) & 0x1FF) | (0 << 14);
        shadowOAM[3].attr2 = (((1) * (32) + (11 + hun)) & 0x3FF);
        spacing += 6;
    } else {
        shadowOAM[3].attr0 = (2 << 8);
    }

    shadowOAM[4].attr0 = ((15) & 0xFF) | (0 << 14);
    shadowOAM[4].attr1 = ((190 + spacing) & 0x1FF) | (0 << 14);
    shadowOAM[4].attr2 = (((1) * (32) + (11 + ten)) & 0x3FF);
    spacing += 6;

    shadowOAM[5].attr0 = ((15) & 0xFF) | (0 << 14);
    shadowOAM[5].attr1 = ((190 + spacing) & 0x1FF) | (0 << 14);
    shadowOAM[5].attr2 = (((1) * (32) + (11 + ones)) & 0x3FF);
}

void updateItem() {

    shadowOAM[price.oamIndex].attr0 = ((price.y) & 0xFF) | (1 << 14);
    shadowOAM[price.oamIndex].attr1 = ((price.x) & 0x1FF) | (3 << 14);
    if (select.y == 48) {
        if (select.x == 128) {
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (1 << 14);
            shadowOAM[description.oamIndex].attr2 = (((12) * (32) + (20)) & 0x3FF);
            shadowOAM[price.oamIndex].attr2 = (((19) * (32) + (0)) & 0x3FF);
            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (24)) & 0x3FF);

        } else if (select.x == 152) {
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (1 << 14);
            shadowOAM[description.oamIndex].attr2 = (((12) * (32) + (12)) & 0x3FF);
            shadowOAM[price.oamIndex].attr2 = (((19) * (32) + (8)) & 0x3FF);
            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (25)) & 0x3FF);
        } else if (select.x == 176) {
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (3 << 14);
            shadowOAM[description.oamIndex].attr2 = (((15) * (32) + (24)) & 0x3FF);
            shadowOAM[price.oamIndex].attr2 = (((19) * (32) + (16)) & 0x3FF);
            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (26)) & 0x3FF);
        } else {
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (1 << 14);
            shadowOAM[description.oamIndex].attr2 = (((12) * (32) + (8)) & 0x3FF);
            shadowOAM[price.oamIndex].attr2 = (((19) * (32) + (24)) & 0x3FF);
            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (27)) & 0x3FF);
        }
    } else if (select.y == 72) {
        if (select.x == 128) {
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (3 << 14);
            shadowOAM[description.oamIndex].attr2 = (((15) * (32) + (8)) & 0x3FF);
            shadowOAM[price.oamIndex].attr2 = (((23) * (32) + (16)) & 0x3FF);
            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (16)) & 0x3FF);
        } else if (select.x == 152) {
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (3 << 14);
            shadowOAM[description.oamIndex].attr2 = (((15) * (32) + (0)) & 0x3FF);
            shadowOAM[price.oamIndex].attr2 = (((23) * (32) + (16)) & 0x3FF);
            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (28)) & 0x3FF);
        } else {
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (3 << 14);
            shadowOAM[description.oamIndex].attr2 = (((15) * (32) + (16)) & 0x3FF);
            shadowOAM[price.oamIndex].attr2 = (((23) * (32) + (16)) & 0x3FF);
            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (16)) & 0x3FF);
        }
    } else {
        if (select.x == 128) {
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (3 << 14);
            shadowOAM[description.oamIndex].attr2 = (((23) * (32) + (24)) & 0x3FF);
            shadowOAM[price.oamIndex].attr2 = (((23) * (32) + (0)) & 0x3FF);
            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((13) * (32) + (8)) & 0x3FF);
        } else {
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (3 << 14);
            shadowOAM[description.oamIndex].attr2 = (((6) * (32) + (24)) & 0x3FF);
            shadowOAM[price.oamIndex].attr2 = (((23) * (32) + (8)) & 0x3FF);
            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((13) * (32) + (12)) & 0x3FF);
        }
    }
}

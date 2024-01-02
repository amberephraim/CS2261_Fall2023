# 1 "inventory.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "inventory.c"
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
# 2 "inventory.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "inventory.c" 2
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
# 4 "inventory.c" 2
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
# 5 "inventory.c" 2
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
# 6 "inventory.c" 2
# 1 "move.h" 1


extern const unsigned int move_sampleRate;
extern const unsigned int move_length;
extern const signed char move_data[];
# 7 "inventory.c" 2


OBJ_ATTR shadowOAM[128];


unsigned short oldButtons;
unsigned short buttons;


PLAYER player;

extern int pal;


WEAPON allWeapons[4];
ITEM allItems[22];

INVENTORY inventory;

SPRITE coin;


SPRITE select;
int index;

SPRITE description;
SPRITE boost;


int vBlankCount;

void initInventory() {

    coin.x = 74;
    coin.y = 19;
    coin.timeUntilNextFrame = 10;
    coin.currentFrame = 0;
    coin.numFrames = 5;
    coin.oamIndex = 1;



    int ten = (inventory.credits / 10) % 10;
    int hun = (inventory.credits / 100) % 10;
    int thou = (inventory.credits / 1000) % 10;
    int ones = inventory.credits % 10;
    int spacing = 0;

    if (thou > 0) {

        shadowOAM[2].attr0 = ((23) & 0xFF) | (0 << 14);
        shadowOAM[2].attr1 = ((95) & 0x1FF) | (0 << 14);
        shadowOAM[2].attr2 = (((1) * (32) + (11 + thou)) & 0x3FF);
        spacing += 6;
    }

    if (hun > 0 || thou > 0) {
       shadowOAM[3].attr0 = ((23) & 0xFF) | (0 << 14);
        shadowOAM[3].attr1 = ((95 + spacing) & 0x1FF) | (0 << 14);
        shadowOAM[3].attr2 = (((1) * (32) + (11 + hun)) & 0x3FF);
        spacing += 6;
    }

    shadowOAM[4].attr0 = ((23) & 0xFF) | (0 << 14);
    shadowOAM[4].attr1 = ((95 + spacing) & 0x1FF) | (0 << 14);
    shadowOAM[4].attr2 = (((1) * (32) + (11 + ten)) & 0x3FF);
    spacing += 6;

    shadowOAM[5].attr0 = ((23) & 0xFF) | (0 << 14);
    shadowOAM[5].attr1 = ((95 + spacing) & 0x1FF) | (0 << 14);
    shadowOAM[5].attr2 = (((1) * (32) + (11 + ones)) & 0x3FF);


    if (player.health != 16) {
        updateHealth();
    } else {
        shadowOAM[6].attr0 = ((48) & 0xFF) | (1 << 14);
        shadowOAM[6].attr1 = ((10) & 0x1FF) | (0 << 14);
        shadowOAM[6].attr2 = (((14) * (32) + (0)) & 0x3FF);
    }

    if (player.baseDamage != 1) {
        (((SB*) 0x06000000)[28].tilemap[((2) * (32) + (21))] = (13 + player.baseDamage));
        (((SB*) 0x06000000)[28].tilemap[((3) * (32) + (21))] = (38 + player.baseDamage));
    }

    if (player.equippedWeapon.weaponType == GUN) {
        (((SB*) 0x06000000)[28].tilemap[((2) * (32) + (23))] = (23));
        (((SB*) 0x06000000)[28].tilemap[((3) * (32) + (23))] = (48));
        (((SB*) 0x06000000)[28].tilemap[((2) * (32) + (24))] = (24));
        (((SB*) 0x06000000)[28].tilemap[((3) * (32) + (24))] = (49));
    } else if (player.equippedWeapon.weaponType != NONE) {
        (((SB*) 0x06000000)[28].tilemap[((2) * (32) + (23))] = (64 + player.equippedWeapon.damage));
        (((SB*) 0x06000000)[28].tilemap[((3) * (32) + (23))] = (89 + player.equippedWeapon.damage));
    }


    int positionX = 2;
    int positionY = 12;

    for (int i = 0; i < 22; i++) {

        positionX += 2;
        if (i == 11) {
            positionX = 4;
            positionY += 2;
        }
        if (!allItems[i].collected) continue;

        switch(allItems[i].itemType) {
            case LOLLY:
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX))] = (117));
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX + 1))] = (118));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX))] = (142));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX + 1))] = (143));
            break;
            case PANCAKE:
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX))] = (119));
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX + 1))] = (120));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX))] = (144));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX + 1))] = (145));
            break;
            case CAKE:
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX))] = (115));
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX + 1))] = (116));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX))] = (140));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX + 1))] = (141));
            break;
            case BURGER:
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX))] = (113));
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX + 1))] = (114));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX))] = (138));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX + 1))] = (139));
            break;
            case HEALTH_POTION:
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX))] = (165));
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX + 1))] = (166));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX))] = (190));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX + 1))] = (191));
            break;
            case DEFENSE_POTION:
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX))] = (163));
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX + 1))] = (164));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX))] = (188));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX + 1))] = (189));
            break;
            case DAMAGE_POTION:
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX))] = (167));
            (((SB*) 0x06000000)[28].tilemap[((positionY) * (32) + (positionX + 1))] = (168));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX))] = (192));
            (((SB*) 0x06000000)[28].tilemap[((positionY + 1) * (32) + (positionX + 1))] = (193));
            break;
        }
    }


    for (int i = 0; i < 3; i++) {
        if (!allWeapons[i + 1].collected) continue;
        if (allWeapons[i + 1].weaponType == player.equippedWeapon.weaponType) {
            (((SB*) 0x06000000)[28].tilemap[((4) * (32) + (20 + (2 * i)))] = (86 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((4) * (32) + (21 + (2 * i)))] = (87 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((5) * (32) + (20 + (2 * i)))] = (111 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((5) * (32) + (21 + (2 * i)))] = (112 + (50 * i)));
        } else {
            (((SB*) 0x06000000)[28].tilemap[((4) * (32) + (20 + (2 * i)))] = (125 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((4) * (32) + (21 + (2 * i)))] = (126 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((5) * (32) + (20 + (2 * i)))] = (150 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((5) * (32) + (21 + (2 * i)))] = (151 + (50 * i)));
        }
    }



    index = 0;
    select.x = 32;
    select.y = 96;
    select.xVel = 16;
    select.yVel = 16;
    select.oamIndex = 0;
    shadowOAM[select.oamIndex].attr0 = ((select.y) & 0xFF) | (0 << 14);
    shadowOAM[select.oamIndex].attr1 = ((select.x) & 0x1FF) | (1 << 14);
    shadowOAM[select.oamIndex].attr2 = (((12) * (32) + (6)) & 0x3FF);


    description.oamIndex = 7;
    description.y = 82;
    description.x = 56;
    description.xVel = 1;

    boost.oamIndex = 8;
    boost.y = 81;
    boost.x = 160;
    boost.xVel = 1;
}

void updateInventory() {

    if ((!(~(oldButtons) & ((1 << 6))) && (~(buttons) & ((1 << 6))))) {
        if (select.y == 96) {

            playSoundB(move_data, move_length, 0);
            select.y = 32;
            select.x = 160;
        } else if (select.y == 112) {
            select.y -= select.yVel;
            playSoundB(move_data, move_length, 0);
        }
    } else if ((!(~(oldButtons) & ((1 << 7))) && (~(buttons) & ((1 << 7))))) {
        if (select.y == 32) {
            select.y = 96;
            select.x = 32;
            playSoundB(move_data, move_length, 0);
        } else if (select.y = 96) {
            select.y += select.yVel;
            playSoundB(move_data, move_length, 0);
        }
    } else if ((!(~(oldButtons) & ((1 << 5))) && (~(buttons) & ((1 << 5))))) {
        if ((select.y > 95 && select.x > 32) || (select.y < 95 && select.x > 160)) {
            select.x -= select.xVel;
            playSoundB(move_data, move_length, 0);
        }
    } else if ((!(~(oldButtons) & ((1 << 4))) && (~(buttons) & ((1 << 4))))) {
        if (select.x < 192) {
            select.x += select.xVel;
            playSoundB(move_data, move_length, 0);
        }
    }

    index = (select.x - 32) / 16;
    if (select.y == 32) {
        index = (select.x - 160) / 16 + 1;
    } else if (select.y == 112) {
        index += 11;
    }
    updateDescription();

    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        if (select.y == 32) {

            if (allWeapons[index].collected) {
                player.equippedWeapon = allWeapons[index];
                updateWeapon();
            }
        } else {

            if (allItems[index].collected) {
                updateItems();
            }
        }
    }

    shadowOAM[select.oamIndex].attr0 = ((select.y) & 0xFF) | (0 << 14);
    shadowOAM[select.oamIndex].attr1 = ((select.x) & 0x1FF) | (1 << 14);
    shadowOAM[select.oamIndex].attr2 = (((12) * (32) + (6)) & 0x3FF);

    updateCurrency();
    draw();
}

void updateCurrency() {

    coin.timeUntilNextFrame--;
    if (coin.timeUntilNextFrame == 0) {
        coin.timeUntilNextFrame = 10;
        coin.currentFrame = (coin.currentFrame + 1) % coin.numFrames;
    }

    shadowOAM[coin.oamIndex].attr0 = ((coin.y) & 0xFF) | (0 << 14);
    shadowOAM[coin.oamIndex].attr1 = ((coin.x) & 0x1FF) | (1 << 14);
    shadowOAM[coin.oamIndex].attr2 = (((10) * (32) + (coin.currentFrame * 2)) & 0x3FF);
}

void updateWeapon() {
    for (int i = 0; i < 3; i++) {
        if (!allWeapons[i + 1].collected) continue;
        if (allWeapons[i + 1].weaponType == player.equippedWeapon.weaponType) {
            (((SB*) 0x06000000)[28].tilemap[((4) * (32) + (20 + (2 * i)))] = (86 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((4) * (32) + (21 + (2 * i)))] = (87 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((5) * (32) + (20 + (2 * i)))] = (111 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((5) * (32) + (21 + (2 * i)))] = (112 + (50 * i)));
        } else {
            (((SB*) 0x06000000)[28].tilemap[((4) * (32) + (20 + (2 * i)))] = (125 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((4) * (32) + (21 + (2 * i)))] = (126 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((5) * (32) + (20 + (2 * i)))] = (150 + (50 * i)));
            (((SB*) 0x06000000)[28].tilemap[((5) * (32) + (21 + (2 * i)))] = (151 + (50 * i)));
        }
    }

    if (player.equippedWeapon.weaponType == GUN) {
        (((SB*) 0x06000000)[28].tilemap[((2) * (32) + (23))] = (23));
        (((SB*) 0x06000000)[28].tilemap[((3) * (32) + (23))] = (48));
        (((SB*) 0x06000000)[28].tilemap[((2) * (32) + (24))] = (24));
        (((SB*) 0x06000000)[28].tilemap[((3) * (32) + (24))] = (49));
    } else if (player.equippedWeapon.weaponType != NONE) {
        (((SB*) 0x06000000)[28].tilemap[((2) * (32) + (23))] = (64 + player.equippedWeapon.damage));
        (((SB*) 0x06000000)[28].tilemap[((3) * (32) + (23))] = (89 + player.equippedWeapon.damage));
        (((SB*) 0x06000000)[28].tilemap[((2) * (32) + (24))] = (80));
        (((SB*) 0x06000000)[28].tilemap[((3) * (32) + (24))] = (80));
    }
}

void updateHealth() {

    if (player.health > player.maxHealth) player.health = player.maxHealth;


    if (player.health >= 4) {
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (3))] = (233));
    }
    if (player.health >= 8) {
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (4))] = (233));
    }
    if (player.health >= 12) {
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (5))] = (233));
    }
    if (player.health == 16) {
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (6))] = (233));
    }
    if (player.health < 13) {
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (6))] = (127));
    }
    if (player.health < 9) {
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (5))] = (127));
    }
    if (player.health < 5) {
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (4))] = (127));
    }


    switch(player.health) {
        case 15:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (6))] = (232));
        break;
        case 14:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (6))] = (231));
        break;
        case 13:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (6))] = (230));
        break;
        case 11:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (5))] = (232));
        break;
        case 10:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (5))] = (231));
        break;
        case 9:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (5))] = (230));
        break;
        case 7:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (4))] = (232));
        break;
        case 6:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (4))] = (231));
        break;
        case 5:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (4))] = (230));
        break;
        case 3:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (3))] = (232));
        break;
        case 2:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (3))] = (231));
        break;
        case 1:
        (((SB*) 0x06000000)[28].tilemap[((6) * (32) + (3))] = (230));
        break;
    }


    shadowOAM[6].attr0 = ((48) & 0xFF) | (1 << 14);
    shadowOAM[6].attr1 = ((6) & 0x1FF) | (0 << 14);
    shadowOAM[6].attr2 = (((14) * (32) + (32 - (2 * player.health))) & 0x3FF);
}

void updateBaseDamage() {

    (((SB*) 0x06000000)[28].tilemap[((2) * (32) + (21))] = (13 + player.baseDamage));
    (((SB*) 0x06000000)[28].tilemap[((3) * (32) + (21))] = (64 + player.baseDamage));
}

void updateItems() {


    (((SB*) 0x06000000)[28].tilemap[((select.y / 8) * (32) + (select.x / 8))] = (54));
    (((SB*) 0x06000000)[28].tilemap[((select.y / 8) * (32) + (select.x / 8 + 1))] = (56));
    (((SB*) 0x06000000)[28].tilemap[((select.y / 8 + 1) * (32) + (select.x / 8))] = (104));
    (((SB*) 0x06000000)[28].tilemap[((select.y / 8 + 1) * (32) + (select.x / 8 + 1))] = (106));

    allItems[index].collected = 0;
    switch(allItems[index].itemType) {
        case LOLLY:
            player.health += 2;
            updateHealth();
            break;
            case PANCAKE:
            player.health += 6;
            updateHealth();
            break;
            case CAKE:
            player.health += 4;
            updateHealth();
            break;
            case BURGER:
            player.health += 8;
            updateHealth();
            break;
            case HEALTH_POTION:
            player.health += 16;
            updateHealth();
            break;
            case DEFENSE_POTION:
            player.defenseBoost = 2;
            player.damageBoost = 0;
            vBlankCount = 0;
            break;
            case DAMAGE_POTION:
            player.damageBoost = 2;
            player.defenseBoost = 0;
            vBlankCount = 0;
            break;
    }
}

void updateDescription() {

    if (player.defenseBoost != 0) {
        shadowOAM[9].attr0 = ((15) & 0xFF) | (0 << 14);
        shadowOAM[9].attr1 = ((200) & 0x1FF) | (1 << 14);
        shadowOAM[9].attr2 = (((12) * (32) + (2)) & 0x3FF) | (((7) & 0xF) << 12);
    } else if (player.damageBoost != 0) {
        shadowOAM[9].attr0 = ((15) & 0xFF) | (0 << 14);
        shadowOAM[9].attr1 = ((200) & 0x1FF) | (1 << 14);
        shadowOAM[9].attr2 = (((12) * (32) + (0)) & 0x3FF) | (((7) & 0xF) << 12);
    } else {
        shadowOAM[9].attr0 = (2 << 8);
    }
    if (!allItems[index].collected || select.y == 32) {
        shadowOAM[description.oamIndex].attr0 = (2 << 8);
        shadowOAM[boost.oamIndex].attr0 = (2 << 8);
    } else {
        switch(allItems[index].itemType) {
        case LOLLY:
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (1 << 14);
            shadowOAM[description.oamIndex].attr2 = (((12) * (32) + (20)) & 0x3FF);

            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (24)) & 0x3FF);
            break;
            case PANCAKE:
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (3 << 14);
            shadowOAM[description.oamIndex].attr2 = (((15) * (32) + (24)) & 0x3FF);

            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (26)) & 0x3FF);
            break;
            case CAKE:
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (1 << 14);
            shadowOAM[description.oamIndex].attr2 = (((12) * (32) + (12)) & 0x3FF);

            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (26)) & 0x3FF);
            break;
            case BURGER:
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (1 << 14);
            shadowOAM[description.oamIndex].attr2 = (((12) * (32) + (8)) & 0x3FF);

            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (27)) & 0x3FF);

            break;
            case HEALTH_POTION:
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (3 << 14);
            shadowOAM[description.oamIndex].attr2 = (((15) * (32) + (0)) & 0x3FF);

            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (0 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (28)) & 0x3FF);
            break;
            case DEFENSE_POTION:
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (3 << 14);
            shadowOAM[description.oamIndex].attr2 = (((15) * (32) + (8)) & 0x3FF);

            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (16)) & 0x3FF);
            break;
            case DAMAGE_POTION:
            shadowOAM[description.oamIndex].attr0 = ((description.y) & 0xFF) | (1 << 14);
            shadowOAM[description.oamIndex].attr1 = ((description.x) & 0x1FF) | (3 << 14);
            shadowOAM[description.oamIndex].attr2 = (((15) * (32) + (16)) & 0x3FF);

            shadowOAM[boost.oamIndex].attr0 = ((boost.y) & 0xFF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr1 = ((boost.x) & 0x1FF) | (1 << 14);
            shadowOAM[boost.oamIndex].attr2 = (((12) * (32) + (16)) & 0x3FF);
            break;
        }
    }

}

typedef enum {NONE, BLUE_KNIFE, WHITE_KNIFE, GUN} weaponType;

typedef enum {IDLE_LEFT, WALK_LEFT, JUMP_LEFT, DOUBLEJUMP_LEFT, RUN_LEFT, ATTACK1_LEFT, ATTACK2_LEFT, CLIMB_LEFT,
                IDLE_RIGHT, WALK_RIGHT, JUMP_RIGHT, DOUBLEJUMP_RIGHT, RUN_RIGHT, ATTACK1_RIGHT, ATTACK2_RIGHT, CLIMB_RIGHT} direction;

typedef enum {ROBOT, SHOOTER, BIRD, SKATEBOARD, BATTER, MACHINE} enemyType;

typedef enum {UP, DOWN, LEFT, RIGHT} enemyDirection;

typedef enum {LOLLY, PANCAKE, CAKE, BURGER, HEALTH_POTION, DEFENSE_POTION, DAMAGE_POTION} itemType;

// Color scheme colors
#define PAL0_JACKET1 (0x34dc)
#define PAL0_JACKET2 (0x3075)
#define PAL0_ACCENT (0x48ec)

#define PAL1_JACKET1 (0x7cc3)
#define PAL1_JACKET2 (0x3060)
#define PAL1_ACCENT (0x7f34)

#define PAL2_JACKET1 (0x6b5a)
#define PAL2_JACKET2 (0x0000)
#define PAL2_ACCENT (0x56b4)

#define PAL3_JACKET1 (0x174f)
#define PAL3_JACKET2 (0x00e0)
#define PAL3_ACCENT (0x2a5f)

typedef struct {
    // basic
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

    // animation
    int timeUntilNextFrame;
    int direction;
    int currentFrame;
    int numFrames;

    // gameplay
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
    // basic
    int x;
    int y;
    int width;
    int height;
    int palRow;
    u8 oamIndex;

    // animation
    int timeUntilNextFrame;
    int currentFrame;
    int numFrames;

    // gameplay
    int active;
    int talk;
    int num;
    int objectiveCompleted;
} NPC;

typedef struct {
    // basic
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
    // basic
    int x;
    int y;
    int width;
    int height;
    u8 oamIndex;

    // gameplay
    int weaponType;
    int damage;
    int collected;
}  WEAPON;

typedef struct {
    // area items
    int area2Map;
    int bossOpen;

    // collected items
    int credits;
    int maxItems;
} INVENTORY;

typedef struct {
    // basic
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

    // animation
    int direction;
    int timeUntilNextFrame;
    int currentFrame;
    int numFrames;

    // gameplay
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
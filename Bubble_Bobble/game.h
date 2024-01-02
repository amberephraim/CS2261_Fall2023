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
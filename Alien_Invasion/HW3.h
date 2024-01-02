
typedef enum {LEFT, RIGHT} DIRECTION;
typedef enum {SPEED, ECLIPSE, HEALTH} TYPE;
typedef enum {HORIZONTAL, DIAGONALH, DIAGONALV, VERTICAL} RINGS;

extern int lives;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int active;
} ENEMY;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int laserMAX;
    int speed;
    DIRECTION direction;
} PLAYER;

typedef struct {
    int x;
    int y;
    int oldx;
    int active;
    DIRECTION direction;
} LASER;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int active;
    TYPE type;
} POWERUP;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
} STAR;

// function prototypes
void drawRings(RINGS, u16);
void drawHorizontalRings(unsigned short);
void drawVerticalRings(unsigned short);
void drawDiagonalRings(unsigned short);
void drawAlien(int, int);
void drawPlayer(int, int, DIRECTION);
void drawPlayerHurt(int, int, DIRECTION);
void drawLaser(int, int);
void drawPowerup(int, int, u16);
void eraseHorizontalRings();
void eraseVerticalRings();
void eraseDiagonalRings();
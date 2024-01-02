// Structs for logs, cars, and trucks

typedef struct {
    int x;
    int y;
    int oldX;
} LOG;

typedef struct {
    int x;
    int y;
    int oldX;
    u16 color;
} CAR;

typedef struct {
    int x;
    int y;
    int oldX;
    u16 color;
} TRUCK;


// function prototypes for HW2

void drawLog(int, int);
void drawFrog(int, int, int);
void drawCar(int, int, u16);
void drawTruck(int, int, u16);
void drawLandscape();
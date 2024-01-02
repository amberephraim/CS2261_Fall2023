#include "gba.h"
#include "print.h"
#include "colors.h"
#include "HW2.h"

// Function Protypes
void initialize();
void updateGame();
void drawGame();
void goToLose();
void goToWin();

// Button register
unsigned short oldButtons;
unsigned short buttons;

// Variables
int lives;
int oldLives;
int frogX;
int frogY;
int frogOldX;
int frogOldY;
int frogSide = 13;
int carWidth = 7;
int carHeight = 7;
int truckWidth = 15;
int truckHeight = 7;
int logWidth = 15;
int logHeight = 13;

LOG logs[2];
TRUCK trucks[4];
CAR cars[3];

// State
enum STATE {GAME, WIN, LOSE} state;

int main() {
    initialize();

    while (1) {
        switch (state) {
            case GAME :
                updateGame();
                waitForVBlank();
                drawGame();
                break;
            case WIN :
                goToWin();
                break;
            case LOSE :
                goToLose();
                break;
        }
    }
    return 0;
}

void initialize() {
    mgba_open();
    REG_DISPCTL = BG2_ENABLE | MODE(3);
    oldButtons = 0;
    buttons = REG_BUTTONS;
    state = GAME;

    lives = 3;
    oldLives = lives;
    frogX = 114;
    frogY = SCREENHEIGHT - 14;
    frogOldX = frogX;
    frogOldY = frogY;

    // Logs
    LOG lT1 = {54, 26, 54};
    LOG lB1 = {159, 56, 54};
    logs[0] = lT1;
    logs[1] = lB1;

    // TRUCKS - move right
    TRUCK tT1 = {54, 104, 54, YELLOW};
    TRUCK tB1 = {54, 134, 54, YELLOW};
    TRUCK tT2 = {159, 104, 159, PINK};
    TRUCK tB2 = {159, 134, 159, PINK};
    trucks[0] = tT1;
    trucks[1] = tB1;
    trucks[2] = tT2;
    trucks[3] = tB2;

    // CARS - move left
    CAR cT1 = {115, 89, 115, RED};
    CAR cB1 = {204, 119, 204, BLUE};
    CAR cB2 = {99, 119, 99, BLUE};
    cars[0] = cB1;
    cars[1] = cT1;
    cars[2] = cB2;
    
    drawLandscape();
    // Frog
    drawFrog(frogX, frogY, frogSide);
    // Lives
    drawRectangle(5, 1, 3, 6, GREEN);
    drawRectangle(10, 1, 3, 6, GREEN);
    drawRectangle(15, 1, 3, 6, GREEN);
    // lilypad
    drawLilypad(109, 47);
    // Draw LOGS, CARS, TRUCKS
    for (int i = 0; i < 4; i++) {
        if (i < 2) {drawLog(logs[i].x, logs[i].y);}
        if (i < 3) {drawCar(cars[i].x, cars[i].y, cars[i].color);}
        drawTruck(trucks[i].x, trucks[i].y, trucks[i].color);
    }
}

void updateGame() {
    frogOldX = frogX;
    frogOldY = frogY;
    oldButtons = buttons;
    buttons = REG_BUTTONS;
    oldLives = lives;

    // Player Movement
    if (BUTTON_PRESSED(BUTTON_UP) && frogY > 11) {
        frogY -= 15;
    } else if (BUTTON_PRESSED(BUTTON_DOWN) && frogY < 146) {
        frogY += 15;
    } else if (BUTTON_PRESSED(BUTTON_LEFT) && frogX > 9) {
        frogX -= 15;
    } else if (BUTTON_PRESSED(BUTTON_RIGHT) && frogX < 219) {
        frogX += 15;
    }

    // Log, Car, Truck movement
    for (int i = 0; i < 4; i++) {
        if (i < 2) {
            logs[i].oldX = logs[i].x;
            if (i % 2 == 0) {
                logs[i].x -= 2;
            } else {
                logs[i].x += 2;
            }
            if (logs[i].x > 230) {
                logs[i].x = 9;
            } else if (logs[i].x < 9) {
                logs[i].x = 230;
            } 
        }
        if (i < 3) {
            cars[i].oldX = cars[i].x;
            if (i % 2 == 0) {
                cars[i].x -= 1;
            } else {
                cars[i].x -= 3;
            }
            if (cars[i].x < 9) {
                cars[i].x = 230;
            }
        }
        trucks[i].oldX = trucks[i].x;
        if (i % 2 == 0) {
            trucks[i].x += 1;
        } else {
            trucks[i].x += 2;
        }
        if (trucks[i].x > 230) {
            trucks[i].x = 9;
        }
    }

    // Collisions
    for (int i = 0; i < 4; i++) {
        // Move with logs
        if (i < 2) {
            if (collision(frogX, frogY, frogSide, frogSide, logs[i].x, logs[i].y, logWidth, logHeight)) {
                if (i % 2 == 1) {
                    frogX += 2;
                } else {
                    frogX -= 2;
                }
                if ((frogX < 9) || (frogX > 230)) {
                    frogX = 114;
                    frogY = SCREENHEIGHT - 14;
                    lives--;
                }
            }
        }
        if (i < 3) {
            if (collision(frogX, frogY, frogSide, frogSide, cars[i].x, cars[i].y, carWidth, carHeight)) {
                frogX = 114;
                frogY = SCREENHEIGHT - 14;
                lives--;
            }
        }
        if (collision(frogX, frogY, frogSide, frogSide, trucks[i].x, trucks[i].y, truckWidth, truckHeight)) {
            frogX = 114;
            frogY = SCREENHEIGHT - 14;
            lives--;
        }
    }
    // Water implementation
    if ((frogY == 56 && !collision(frogX, frogY, frogSide, frogSide, logs[1].x, logs[1].y, logWidth, logHeight))
        || (frogY == 26 && !collision(frogX, frogY, frogSide, frogSide, logs[0].x, logs[0].y, logWidth, logHeight))
        || (frogY == 41 && !collision(frogX, frogY, frogSide, frogSide, 103, 41, 12, 12))) {
        frogX = 114;
        frogY = SCREENHEIGHT - 14;
        lives--;
    }
}

void drawGame() {
    // state check
    if (lives == 0) {
        goToLose();
    } else if (frogY == 11) {
        goToWin();
    } else {
        // Draw lives
        if (oldLives != lives) {
            drawRectangle(5, 1, 13, 6, BLACK);
            for (int i = 1; i <= lives; i++) {
                drawRectangle(5 * i, 1, 3, 6, GREEN);
            }
        }
        // Erase Frog
        if (frogOldX != frogX || frogOldY != frogX) {
            if (frogOldY == 146) {
                drawRectangle(frogOldX, frogOldY, frogSide, frogSide, BLACK);
                drawRectangle(frogOldX, frogOldY + 1, frogSide, 2, YELLOW);
            } else if (frogOldY >= 86) {
                drawRectangle(frogOldX, frogOldY, frogSide, frogSide, GRAY);
            } else if (frogOldY == 71 || frogOldY == 11) {
                drawRectangle(frogOldX, frogOldY, frogSide, frogSide, GRASS_GREEN);
            } else if (frogOldY >= 26) {
                drawRectangle(frogOldX, frogOldY, frogSide, frogSide, WATER_BLUE);
            } 
        }
        // Erase Log, Car, truck
        for (int i = 0; i < 4; i++) {
            if (i < 2) {drawRectangle(logs[i].oldX, logs[i].y, logWidth, logHeight, WATER_BLUE);}
            if (i < 3) {drawRectangle(cars[i].oldX, cars[i].y - 1, carWidth, carHeight, GRAY);}
            drawRectangle(trucks[i].oldX, trucks[i].y - 1, truckWidth, truckHeight, GRAY);
        }
        // Draw Log, Car, truck
        for (int i = 0; i < 4; i++) {
            if (i < 2) {drawLog(logs[i].x, logs[i].y);}
            if (i < 3) {drawCar(cars[i].x, cars[i].y, cars[i].color); }
            drawTruck(trucks[i].x, trucks[i].y, trucks[i].color);
        }
        if (frogOldY == 41) {
            drawLilypad(109, 47);
        }
        drawFrog(frogX, frogY, frogSide);
    }
}

void goToLose() {
    state = LOSE;
    fillScreen(RED);
}

void goToWin() {
    state = WIN;
    fillScreen(GREEN);
}
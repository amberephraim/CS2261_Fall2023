#include "gba.h"
#include "print.h"
#include "colors.h"
#include "HW3.h"
#include "analogSound.h"
#include <time.h>

unsigned short oldButtons;
unsigned short buttons;

// function prototypes
void initGame();
void unpauseGame();
void updateGame();
void drawGame();

RINGS rings;
unsigned short ringColor;

ENEMY enemies[5];
LASER lasers[4];
POWERUP powerups[3] = {0, 0, 0, 0, 0, HEALTH, 0, 0, 0, 0, 0, SPEED};
PLAYER player = {SCREENWIDTH/2, SCREENHEIGHT/2, SCREENWIDTH/2, SCREENHEIGHT/2, 2, 1, LEFT};
STAR stars[20];

int count;
int lives;
int oldLives;
int enemiesActive;
int lasersActive;
int damage;
int speedTimer;

int planetSide = 30;
int playerWidth = 15;
int playerHeight = 8;
int enemyWidth = 9;
int enemyHeight = 7;

void initGame() {
    count = 0;
    lasersActive = 0;
    enemiesActive = 0;
    damage = 0;
    speedTimer = 0;
    lives = 5;
    oldLives = 5;
    ringColor = DARK_BLUE;
    rings = HORIZONTAL;
    player.x = SCREENWIDTH/2;
    player.y = SCREENHEIGHT/2;
    player.speed = 1;
    for (int i = 0; i < 5; i++) {
        enemies[i].active = 0;
        if (i < 2) {
            powerups[i].active = 0;
        }
        if (i < 4) {
            lasers[i].active = 0;
        }
    }
    srand(time(NULL));
    fillScreen(BLACK);
    drawCircle(215, SCREENHEIGHT/2, 10, TEAL); //Planet
    for (int i = 0; i < 20; i++) {
        stars[i].x = rand() % 260;
        stars[i].y = rand() % (160 - 23 + 1) + 23;
        stars[i].oldx = stars[i].x;
        stars[i].oldy = stars[i].y;
    }
    drawHorizontalRings(DARK_BLUE);
    for (int i = 0; i < 5; i++) {
        drawChar(6 * i, 5, 3, LIGHT_PURPLE); // draw hearts
    }
    drawPlayer(player.x, player.y, player.direction);   
}

void unpauseGame() {
    fillScreen(BLACK);
    drawCircle(215, SCREENHEIGHT/2, 10, TEAL); //Planet
    drawHorizontalRings(DARK_BLUE);
    for (int i = 0; i < lives; i++) {
        drawChar(6 * i, 5, 3, LIGHT_PURPLE); // draw hearts
    }
    drawPlayer(player.x, player.y, player.direction);
}

void updateGame() {
    count++;
    oldLives = lives;
    player.oldx = player.x;
    player.oldy = player.y;
    if (BUTTON_HELD(BUTTON_RIGHT) && player.x < 231) {
        player.x += player.speed;
        player.direction = RIGHT;
    } else if (BUTTON_HELD(BUTTON_LEFT) && player.x > 8) {
        player.x -= player.speed;
        player.direction = LEFT;
    }
    if (BUTTON_HELD(BUTTON_UP) && player.y > 20) {
        player.y--;
    } else if (BUTTON_HELD(BUTTON_DOWN) && player.y < 147) {
        player.y++;
    }
    if (count % 20 == 0) {
        if (rings == DIAGONALV) {
            rings = HORIZONTAL;
        } else if (rings == HORIZONTAL) {
            rings = DIAGONALH;
        } else if (rings == DIAGONALH) {
            rings = VERTICAL;
        } else if (rings == VERTICAL) {
            rings = DIAGONALV;
        }
    } 
    if (count % 40 == 0) {
        ringColor = DARK_BLUE;
    }

    // LASERS
    if (BUTTON_PRESSED(BUTTON_A) && lasersActive < player.laserMAX) {
        for (int i = 0; i < 4; i++) {
            if (!lasers[i].active) {
                lasers[i].active = 1;
                lasers[i].y = player.y - 3;
                if (player.direction == LEFT) {
                    lasers[i].direction = LEFT;
                    lasers[i].x = player.x - 9;
                } else {
                    lasers[i].direction = RIGHT;
                    lasers[i].x = player.x + 8;
                }
                lasers[i].oldx = lasers[i].x;
                lasersActive++;
                break;
            }
        }
    }
    for (int i = 0; i < 4; i++) {
        if (lasers[i].active) {
            lasers[i].oldx = lasers[i].x;
            if (lasers[i].direction == LEFT) {
                lasers[i].x -= 2;
            } else {
                lasers[i].x += 2;
            } 
            if (collision(lasers[i].x - 1, lasers[i].y - 1, 4, 4, 205, SCREENHEIGHT/2 - 10, planetSide, planetSide)) {
                oldLives = lives;
                lives--;
                damage = 5;
                lasers[i].x = 0;
                ringColor = HOT_PINK;
                playAnalogSound(0);
            }
        }
    }
    if (collision(player.x, player.y, playerWidth, playerHeight, 205, SCREENHEIGHT/2 - 10, planetSide, planetSide)) {
        oldLives = lives;
        lives--;
        damage = 5;
        player.x = SCREENWIDTH/2;
        player.y = SCREENHEIGHT/2;
        ringColor = HOT_PINK;
        playAnalogSound(1);
    }


    // ENEMIES
    if (count % 120 == 0 && enemiesActive < 5) {
        for (int i = 0; i < 5; i++) {
            if (!enemies[i].active) {
                enemies[i].active = 1;
                enemies[i].x = 8;
                enemies[i].y = (rand() % (128)) + 20; //Max: 147  Min: 20
                enemies[i].oldx = 8;
                enemies[i].oldy = enemies[i].y;
                enemiesActive++;
                break;
            }
        }
    }
    for (int i = 0; i < 5; i++) {
        if (enemies[i].active) {
            enemies[i].oldx = enemies[i].x;
            enemies[i].oldy = enemies[i].y;
            if (enemies[i].x == 216) {
                if (enemies[i].y < SCREENHEIGHT/2) {
                    enemies[i].y++;
                } else {
                    enemies[i].y--;
                }
            } else {
                enemies[i].x++;
            }
            if (collision(enemies[i].x - 4, enemies[i].y - 4, enemyWidth, enemyHeight, 205, SCREENHEIGHT/2 - 10, planetSide, planetSide)) {
                oldLives = lives;
                damage = 5;
                lives--;
                ringColor = HOT_PINK;
                enemies[i].x = 0;
                playAnalogSound(0);
            }
            if (collision(player.x, player.y, playerWidth, playerHeight - 5, enemies[i].x - 4, enemies[i].y - 4, enemyWidth, enemyHeight)) {
                oldLives = lives;
                lives--;
                damage = 5;
                player.x = SCREENWIDTH/2;
                player.y = SCREENHEIGHT/2;
                enemies[i].x = 0;
                playAnalogSound(0);
            }
            if (i < 4) {
                if (lasers[i].active) {
                    if (collision(enemies[i].x - 6, enemies[i].y - 6, enemyWidth + 3, enemyHeight + 3, lasers[i].x - 1, lasers[i].y - 1, 4, 4)) {
                        lasers[i].x = 0;
                        enemies[i].x = 0;
                        playAnalogSound(1);
                    }
                }
            }
        }
    }

    // POWERUPS
    if (count % 550 == 0) { // Health
        if (!powerups[0].active) {
            powerups[0].x = rand() % (184 - 14 + 1) + 14;
            powerups[0].y = rand() % (147 - 23 + 1) + 23;
            powerups[0].oldx = powerups[0].x;
            powerups[0].oldy = powerups[0].y;
            powerups[0].active = 1;
        }
    } else if (count % 620 == 0) { //Speed
        if (!powerups[1].active) {
            powerups[1].x = rand() % (184 - 14 + 1) + 14;
            powerups[1].y = rand() % (147 - 23 + 1) + 23;
            powerups[1].oldx = powerups[1].x;
            powerups[1].oldy = powerups[1].y;
            powerups[1].active = 1;   
        }
    }
    if (collision(player.x, player.y, playerWidth, playerHeight - 5, powerups[0].x, powerups[0].y, 6, 8)) {
        powerups[0].x = 0;
        lives++;
        playAnalogSound(16);
    }
    if (collision(player.x, player.y, playerWidth, playerHeight - 5, powerups[1].x, powerups[1].y, 6, 8)) {
        powerups[1].x = 0;
        player.speed++;
        speedTimer = 300;
        playAnalogSound(16);
    }
    if (speedTimer != 0) {
        speedTimer--;
        if (speedTimer == 0) {
            player.speed = 1;
        }
    }
    
    // STARS
    if (count == 0 || count % 300 == 0) {
        for (int i = 0; i < 20; i++) {
            stars[i].oldx = stars[i].x;
            stars[i].oldy = stars[i].y;
            stars[i].x = rand() % 260;
            stars[i].y = rand() % (160 - 23 + 1) + 23;
        }
    }
}

void drawGame() {
    drawRectangle(player.oldx - 6, player.oldy - 5, playerWidth, playerHeight + 6, BLACK);
    if (lives != oldLives) {
        drawRectangle(0, 5, 6 * oldLives, 8, BLACK);
        for (int i = 0; i < lives; i++) {
            drawChar(6 * i, 5, 3, LIGHT_PURPLE);
        }
    }

    for (int i = 0; i < 20; i++) {
        if (count % 300 == 0) {
            setPixel(stars[i].oldx, stars[i].oldy, BLACK);
        }
        setPixel(stars[i].x, stars[i].y, WHITE);
    }
   
    for (int i = 0; i < 4; i++) {
        if (lasers[i].active) {
            drawRectangle(lasers[i].oldx - 1, lasers[i].y - 1, 4, 4, BLACK);
            if (lasers[i].x > 235 || lasers[i].x < 4) {
                lasers[i].active = 0;
                lasersActive--;
            } else {
                drawLaser(lasers[i].x, lasers[i].y);
            }
        }
    }
    if (powerups[0].active) {
        drawPowerup(powerups[0].oldx, powerups[0].oldy, BLACK);
        if (powerups[0].x == 0) {
            powerups[0].active = 0;
        } else {
            drawPowerup(powerups[0].x, powerups[0].y, HOT_PINK);
        }
    }
    if (powerups[1].active) {
        drawPowerup(powerups[1].oldx, powerups[1].oldy, BLACK);
        if (powerups[1].x == 0) {
            powerups[1].active = 0;
        } else {
            drawPowerup(powerups[1].x, powerups[1].y, CROWN_YELLOW);
        }
    }
    for (int i = 0; i < 5; i++) {
        if (enemies[i].active) {
            drawRectangle(enemies[i].oldx - 4, enemies[i].oldy - 4, enemyWidth, enemyHeight, BLACK);
            if (enemies[i].x == 0) {
                enemies[i].active = 0;
                enemiesActive--;
            } else {
                drawAlien(enemies[i].x, enemies[i].y);
            }
        }
    }
    drawRings(rings, ringColor);
    if (damage != 0) {
       drawPlayerHurt(player.x, player.y, player.direction);
       damage--; 
    } else {
       drawPlayer(player.x, player.y, player.direction); 
    }
}
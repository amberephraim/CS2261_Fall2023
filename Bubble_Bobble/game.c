#include "sprites.h"
#include "gba.h"
#include "spritesheet.h"
#include "mode0.h"
#include "print.h"
#include "game.h"
#include "level1collisionmap.h"
#include "level2collisionmap.h"

// Sprites
PLAYER player;
ENEMY enemies[6];
BUBBLE bubbles[3];
SPRITE scoreAnimation;
FIREBALL fireballs[4];

// Score Sprites
SCORE hundreds;
SCORE tens;
SCORE ones;

// Shadow OAM
OBJ_ATTR shadowOAM[128];

// Function Prototypes
void initGame1Sprites();
void initGame2Sprites();
void updateGame1();
void updateGame2();
void updateFireball();
void updateBubbles();
void updatePlayer();
void updateScore();
unsigned char colorAt(int, int);

// Tracked variables
int enemyStall;
extern int level;
extern int score;


inline unsigned char colorAt(int x, int y) {
    // if it's 0 the player can't move there
    if (level == 1) {
        return ((unsigned char *)level1collisionmapBitmap) [OFFSET(x, y, SCREENWIDTH)];
    } else {
        return ((unsigned char *)level2collisionmapBitmap) [OFFSET(x, y, SCREENWIDTH)];
    }
}

void initGame1Sprites() {

    // Tracking variables
    score = 0;
    enemyStall = 0;
    player.damageBuffer = 0;
    player.jumpTimer = 0;

    // Score sprites
    hundreds.x = 173;
    hundreds.y = 6;
    hundreds.number = 0;
    hundreds.oamIndex = 15;
    tens.x = 181;
    tens.y = 6;
    tens.number = 0;
    tens.oamIndex = 16;
    ones.x = 189;
    ones.y = 6;
    ones.number = 0;
    ones.oamIndex = 17;

    // Initialize the player
    player.x = 108;
    player.y = 136;
    player.xVel = 1;
    player.yVel = 1;
    player.width = 16;
    player.height = 16;
    player.timeUntilNextFrame = 10;
    player.direction = LEFT;
    player.isMoving = 0;
    player.currentFrame = 0;
    player.moveFrames = 4;
    player.idleFrames = 3;
    player.bubbleFrames = 6;
    player.numOfBubbles = 3;
    player.oamIndex = 0;
    player.bubbleCounter = 0;
    player.lives = 3;

    // Initialize bubbles
    for (int i = 0; i < 3; i++) {
        bubbles[i].oamIndex = i + 7;
        bubbles[i].width = 14;
        bubbles[i].height = 14;
        bubbles[i].timer = 300;
        bubbles[i].active = 0;
    }

    // Initilize score animation
    scoreAnimation.isAnimating = 0;
    scoreAnimation.oamIndex = 10;

    // Initialize the enemies
    
    // Robots
    enemies[0].x = 182;
    enemies[0].y = 40;
    enemies[0].direction = LEFT;

    enemies[1].x = 44;
    enemies[1].y = 40;
    enemies[1].direction = RIGHT;

    enemies[2].x = 61;
    enemies[2].y = 72;
    enemies[2].direction = RIGHT;


    enemies[3].x = 162;
    enemies[3].y = 72;
    enemies[3].direction = LEFT;
    
    // Ghosts
    enemies[4].x = 10;
    enemies[4].y = 103;
    enemies[4].direction = RIGHT;

    enemies[5].x = 213;
    enemies[5].y = 40;
    enemies[5].direction = LEFT;


    for (int i = 0; i < 6; i++) {
        enemies[i].xVel = 1;
        enemies[i].yVel = 1;
        enemies[i].width = 16;
        enemies[i].height = 16;
        enemies[i].timeUntilNextFrame = 20;
        enemies[i].chargeFireball = 0;
        enemies[i].isMoving = 0;
        enemies[i].currentFrame = 0;
        enemies[i].bubbleFrames = 3;
        enemies[i].oamIndex = i + 1;
        enemies[i].inBubble = 0;
        enemies[i].active = 1;
        enemies[i].isFruit = 0;
        if (i < 4) {
            enemies[i].eType = ROBOT;
            enemies[i].numFrames = 4;
        } else {
            enemies[i].eType = GHOST;
            enemies[i].numFrames = 2;
        }
    }
    enemies[5].xVel = -1;
}

void updateGame1() {
    enemyStall++; // lag for enemies

    updatePlayer();

    // update bubbles
    updateBubbles();

    // update enemies
    for (int i = 0; i < 6; i++) {
        if (!enemies[i].active) continue;
        int eleftX = enemies[i].x;
        int erightX = enemies[i].x + enemies[i].width - 1;
        int etopY = enemies[i].y;
        int ebottomY = enemies[i].y + enemies[i].height - 1;

        if (enemies[i].isFruit) {
            if (enemies[i].y < 137) {
                // fall until it hits the bottom
                enemies[i].y++;
            }
        } else if (!enemies[i].inBubble) { //update movement
            if (enemyStall % 2 == 0) { // Ghost movement - Type 3: bounces like a screensaver
                if (enemies[i].eType == GHOST) {
                    enemies[i].x += enemies[i].xVel;
                    enemies[i].y += enemies[i].yVel;
                    if (enemies[i].x < 8) {
                        enemies[i].xVel = -enemies[i].xVel;
                        if (enemies[i].xVel < 0) {
                            enemies[i].direction = LEFT;
                        } else {
                            enemies[i].direction = RIGHT;
                        }
                    }
                    if (enemies[i].x > 216) {
                        enemies[i].xVel = -enemies[i].xVel;
                        if (enemies[i].xVel < 0) {
                            enemies[i].direction = LEFT;
                        } else {
                            enemies[i].direction = RIGHT;
                        }
                    }
                    if (enemies[i].y < 33) {
                        enemies[i].yVel = -enemies[i].yVel;
                    }
                    if (enemies[i].y > 136) {
                        enemies[i].yVel = -enemies[i].yVel;
                    }
                } else if (enemies[i].eType == ROBOT) { // Robot movement - Type 1: walks and jumps
                    if (enemies[i].jumpTimer != 0) enemies[i].jumpTimer--;
                    if (enemies[i].x < player.x) {
                        if (colorAt(erightX + enemies[i].xVel, etopY) && colorAt(erightX + enemies[i].xVel, ebottomY)) {
                            enemies[i].x += enemies[i].xVel;
                        }
                        enemies[i].direction = RIGHT;
                    } else if (enemies[i].x > player.x) {
                        if (colorAt(eleftX - enemies[i].xVel, etopY) && colorAt(eleftX - enemies[i].xVel, ebottomY)) {
                            enemies[i].x -= enemies[i].xVel;
                        }
                        enemies[i].direction = LEFT;
                    }
                    if (player.y < enemies[i].y && enemies[i].jumpTimer == 0 && enemies[i].y > 32 && (!colorAt(eleftX, ebottomY + enemies[i].yVel) || !colorAt(erightX, ebottomY + enemies[i].yVel))) {
                        // no collision checks when jumping
                        // start jump
                        enemies[i].jumpTimer = 35;
                        enemies[i].y -= enemies[i].yVel;
                    } else if (enemies[i].jumpTimer != 0 && enemies[i].y > 32) {
                        // complete jump
                        enemies[i].y -= enemies[i].yVel;
                    } else if (enemies[i].y < (SCREENHEIGHT - enemies[i].height) && colorAt(eleftX, ebottomY + enemies[i].yVel) && colorAt(erightX, ebottomY + enemies[i].yVel)) {
                        // fall if there's nothing underneath
                        enemies[i].y += enemies[i].yVel;
                    } else if (player.y > enemies[i].y) { //avoid getting stuck on walls
                        if (enemies[i].x  > 37 && enemies[i].x < 109 && player.x < enemies[i].x) {
                            enemies[i].x += 2 * enemies[i].xVel;
                            enemies[i].direction = RIGHT;
                        } else if (enemies[i].x > 110 && enemies[i].x < 193 && player.x > enemies[i].x) {
                            enemies[i].x -= 2 * enemies[i].xVel;
                            enemies[i].direction = LEFT;
                        }
                    }
                } 
            }
        }
        // Collision with player
        if (collision(enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height, player.x, player.y, player.width, player.height)) {
            if (enemies[i].inBubble) {
                enemies[i].isFruit = 1;
                enemies[i].yVel = 1;
                enemies[i].y = 32;
                if (player.direction == LEFT || player.direction == UP_LEFT) {
                    enemies[i].x -= 30;
                    if (enemies[i].x < 8) {
                        enemies[i].x = 8;
                    }
                } else {
                    enemies[i].x += 30;
                    if (enemies[i].x > 216) {
                        enemies[i].x = 216;
                    }
                }
                
                enemies[i].food = i;
                enemies[i].bubbleTimer = 450;
                enemies[i].inBubble = 0;
            } else if (enemies[i].isFruit && enemies[i].active) {
                score += 50;
                scoreAnimation.x = enemies[i].x + 5;
                scoreAnimation.y = enemies[i].y;
                scoreAnimation.timeUntilNextFrame = 20;
                scoreAnimation.isAnimating = 1;
                enemies[i].isFruit = 0;
                enemies[i].active = 0;
            } else if (player.damageBuffer == 0) {
                player.x = 108;
                player.y = 136;
                player.damageBuffer = 50;
                player.jumpTimer = 0;
                if (player.lives == 3) {
                    setTile(11, 0, 4, 28);
                    setTile(12, 0, 4, 28);
                    setTile(11, 1, 4, 28);
                    setTile(12, 1, 4, 28);
                    setTile(11, 2, 4, 28);
                    setTile(12, 2, 4, 28);
                } else {
                    setTile(9, 0, 4, 28);
                    setTile(10, 0, 4, 28);
                    setTile(9, 1, 4, 28);
                    setTile(10, 1, 4, 28);
                    setTile(9, 2, 4, 28);
                    setTile(10, 2, 4, 28);
                }
                player.lives--;
                
            }  
        }

        // Collision with bubbles
        for (int j = 0; j < 3; j++) { 
            if (bubbles[j].active && !enemies[i].inBubble && !enemies[i].isFruit && collision(enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height, bubbles[j].x, bubbles[j].y, bubbles[j].width, bubbles[j].height)) {
                enemies[i].inBubble = 1;
                enemies[i].bubbleTimer = 300;
                bubbles[j].active = 0;
                player.numOfBubbles++;
            }
        }
        // In a bubble - Timer
        if (enemies[i].inBubble) { 
            enemies[i].bubbleTimer--;
            if (enemies[i].bubbleTimer == 0) {
                enemies[i].inBubble = 0;
            }
        } else if (enemies[i].isFruit) {
            enemies[i].bubbleTimer--;
            if (enemies[i].bubbleTimer == 0) {
                enemies[i].active = 0;
            }
        }

        // Animation
        if (!enemies[i].isFruit) {
            enemies[i].timeUntilNextFrame--;
            if (enemies[i].timeUntilNextFrame == 0) {
                enemies[i].timeUntilNextFrame = 20;
                if (enemies[i].inBubble) {
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % enemies[i].bubbleFrames;
                } else {
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % enemies[i].numFrames;
                }
            }
        }
    }

    // update shadowOAM
    updateShadowOAM();

    // Check for level completion
    level = 2;
    for (int i = 0; i < 6; i++) {
        if (enemies[i].active) {
            level = 1;
        }
    }
    if (level == 2 && !scoreAnimation.isAnimating) {
        hideSprites();
        // Score
        shadowOAM[hundreds.oamIndex].attr0 = ATTR0_Y(hundreds.y) | ATTR0_TALL;
        shadowOAM[hundreds.oamIndex].attr1 = ATTR1_X(hundreds.x) | ATTR1_TINY;
        shadowOAM[hundreds.oamIndex].attr2 = ATTR2_TILEID(hundreds.number + 17, 15);

        shadowOAM[tens.oamIndex].attr0 = ATTR0_Y(tens.y) | ATTR0_TALL;
        shadowOAM[tens.oamIndex].attr1 = ATTR1_X(tens.x) | ATTR1_TINY;
        shadowOAM[tens.oamIndex].attr2 = ATTR2_TILEID(tens.number + 17, 15);

        shadowOAM[ones.oamIndex].attr0 = ATTR0_Y(ones.y) | ATTR0_TALL;
        shadowOAM[ones.oamIndex].attr1 = ATTR1_X(ones.x) | ATTR1_TINY;
        shadowOAM[ones.oamIndex].attr2 = ATTR2_TILEID(ones.number + 17, 15);
        player.currentFrame = 0;
    }
}

void initGame2Sprites() {
    // Tracking variables
    enemyStall = 0;
    player.damageBuffer = 0;
    player.jumpTimer = 0;

    // Initialize the player
    player.x = 108;
    player.y = 136;
    player.direction = LEFT;

    // Initialize the enemies
    
    // Wizards
    enemies[0].x = 76;
    enemies[0].y = 40;
    enemies[0].direction = RIGHT;
    enemies[0].xVel = 1;
    enemies[0].timer = 50;

    enemies[1].x = 115;
    enemies[1].y = 72;
    enemies[1].direction = RIGHT;
    enemies[1].xVel = 1;
    enemies[1].timer = 200;

    enemies[2].x = 157;
    enemies[2].y = 104;
    enemies[2].direction = LEFT;
    enemies[2].xVel = -1;
    enemies[2].timer = 135;

    // Robots
    enemies[3].x = 21;
    enemies[3].y = 72;
    enemies[3].direction = RIGHT;
    
    enemies[4].x = 200;
    enemies[4].y = 104;
    enemies[4].direction = LEFT;

    // Ghost
    enemies[5].x = 22;
    enemies[5].y = 38;
    enemies[5].direction = RIGHT;
    enemies[5].xVel = 1;
    enemies[5].yVel = 1;

    for (int i = 0; i < 6; i++) {
        enemies[i].active = 1;
        enemies[i].isFruit = 0;
        enemies[i].currentFrame = 0;
        
        if (i < 3) {
            enemies[i].eType = WIZARD;
            enemies[i].numFrames = 4;
            enemies[i].fireballFrames = 5;
        } else if (i < 5) {
            enemies[i].eType = ROBOT;
            enemies[i].numFrames = 4;
            enemies[i].xVel = 1;
            enemies[i].yVel = 1;
        } else {
            enemies[i].eType = GHOST;
            enemies[i].numFrames = 2;
        }
    }

    // Initialize bubbles
    for (int i = 0; i < 3; i++) {
        bubbles[i].timer = 300;
        bubbles[i].active = 0;
    }

    // Initialize fireballs
    for (int i = 0; i < 4; i++) {
        fireballs[i].active = 0;
        fireballs[i].width = 16;
        fireballs[i].height = 16;
        fireballs[i].numFrames = 4;
        fireballs[i].dispelFrames = 3;
        fireballs[i].oamIndex = i + 11;
        fireballs[i].dispel = 0;
    }

    // Modify map
    if (player.lives < 3) {
        setTile(11, 0, 4, 28);
        setTile(12, 0, 4, 28);
        setTile(11, 1, 4, 28);
        setTile(12, 1, 4, 28);
        setTile(11, 2, 4, 28);
        setTile(12, 2, 4, 28);
    } 
    if (player.lives == 1) {
        setTile(9, 0, 4, 28);
        setTile(10, 0, 4, 28);
        setTile(9, 1, 4, 28);
        setTile(10, 1, 4, 28);
        setTile(9, 2, 4, 28);
        setTile(10, 2, 4, 28);
    }
}

void updateGame2() {
    enemyStall++;

    // player movement
    updatePlayer();

    // update bubbles
    updateBubbles();


    // update enemies
    for (int i = 0; i < 6; i++) {
        if (!enemies[i].active) continue;
        
        int eleftX = enemies[i].x;
        int erightX = enemies[i].x + enemies[i].width - 1;
        int etopY = enemies[i].y;
        int ebottomY = enemies[i].y + enemies[i].height - 1;

        if (enemies[i].isFruit) {
            if (enemies[i].y < 137) {
                // fall until it hits the bottom
                enemies[i].y++;
            }
        } else if (!enemies[i].inBubble) { //update movement
            if (enemyStall % 2 == 0) {
                if (enemies[i].eType == GHOST) { // Ghost movement - Type 3: bounces like a screensaver
                    enemies[i].x += enemies[i].xVel;
                    enemies[i].y += enemies[i].yVel;
                    if (enemies[i].x < 17) {
                        enemies[i].xVel = -enemies[i].xVel;
                        if (enemies[i].xVel < 0) {
                            enemies[i].direction = LEFT;
                        } else {
                            enemies[i].direction = RIGHT;
                        }
                    }
                    if (enemies[i].x > 207) {
                        enemies[i].xVel = -enemies[i].xVel;
                        if (enemies[i].xVel < 0) {
                            enemies[i].direction = LEFT;
                        } else {
                            enemies[i].direction = RIGHT;
                        }
                    }
                    if (enemies[i].y < 33) {
                        enemies[i].yVel = -enemies[i].yVel;
                    }
                    if (enemies[i].y > 136) {
                        enemies[i].yVel = -enemies[i].yVel;
                    }
                } else if (enemies[i].eType == WIZARD) { // Wizard movement - Type 4: moves back and forth and shoots fireballs down
                    if (!enemies[i].chargeFireball) {
                        enemies[i].timer--;
                        enemies[i].x += enemies[i].xVel;
                        if (enemies[i].x < 71) {
                            enemies[i].xVel = -enemies[i].xVel;
                            enemies[i].direction = RIGHT;
                        }
                        if (enemies[i].x > 160) {
                            enemies[i].xVel = -enemies[i].xVel;
                            enemies[i].direction = LEFT;
                        }
                        if (enemies[i].timer == 0) {
                            enemies[i].chargeFireball = 1;
                            enemies[i].currentFrame = 0;
                            enemies[i].timer = 300;
                        }
                    }
                } else if (enemies[i].eType == ROBOT) { // Robot movement - Type 1: walks and jumps
                    if (enemies[i].jumpTimer != 0) enemies[i].jumpTimer--;
                    if (enemies[i].x < player.x) {
                        if (colorAt(erightX + enemies[i].xVel, etopY) && colorAt(erightX + enemies[i].xVel, ebottomY)) {
                            enemies[i].x += enemies[i].xVel;
                        }
                        enemies[i].direction = RIGHT;
                    } else if (enemies[i].x > player.x) {
                        if (colorAt(eleftX - enemies[i].xVel, etopY) && colorAt(eleftX - enemies[i].xVel, ebottomY)) {
                            enemies[i].x -= enemies[i].xVel;
                        }
                        enemies[i].direction = LEFT;
                    }
                    if (player.y < enemies[i].y && enemies[i].jumpTimer == 0 && enemies[i].y > 32 && (!colorAt(eleftX, ebottomY + enemies[i].yVel) || !colorAt(erightX, ebottomY + enemies[i].yVel))) {
                        // no collision checks when jumping
                        // start jump
                        enemies[i].jumpTimer = 35;
                        enemies[i].y -= enemies[i].yVel;
                    } else if (enemies[i].jumpTimer != 0 && enemies[i].y > 32) {
                        // complete jump
                        enemies[i].y -= enemies[i].yVel;
                    } else if (enemies[i].y < (SCREENHEIGHT - enemies[i].height) && colorAt(eleftX, ebottomY + enemies[i].yVel) && colorAt(erightX, ebottomY + enemies[i].yVel)) {
                        // fall if there's nothing underneath
                        enemies[i].y += enemies[i].yVel;
                    }
                }
            }
        }
        

        // Collision with player
        if (collision(enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height, player.x, player.y, player.width, player.height)) {
            if (enemies[i].inBubble) {
                enemies[i].isFruit = 1;
                enemies[i].y = 32;
                if (player.direction == LEFT || player.direction == UP_LEFT) {
                    enemies[i].x -= 30;
                    if (enemies[i].x < 17) {
                        enemies[i].x = 17;
                    }
                } else {
                    enemies[i].x += 30;
                    if (enemies[i].x > 207) {
                        enemies[i].x = 207;
                    }
                }
                enemies[i].bubbleTimer = 450;
                enemies[i].inBubble = 0;
            } else if (enemies[i].isFruit && enemies[i].active) {
                score += 50;
                scoreAnimation.x = enemies[i].x + 5;
                scoreAnimation.y = enemies[i].y;
                scoreAnimation.timeUntilNextFrame = 20;
                scoreAnimation.isAnimating = 1;
                enemies[i].isFruit = 0;
                enemies[i].active = 0;
            } else if (player.damageBuffer == 0) {
                if (player.lives == 3) {
                    setTile(11, 0, 4, 28);
                    setTile(12, 0, 4, 28);
                    setTile(11, 1, 4, 28);
                    setTile(12, 1, 4, 28);
                    setTile(11, 2, 4, 28);
                    setTile(12, 2, 4, 28);
                } else {
                    setTile(9, 0, 4, 28);
                    setTile(10, 0, 4, 28);
                    setTile(9, 1, 4, 28);
                    setTile(10, 1, 4, 28);
                    setTile(9, 2, 4, 28);
                    setTile(10, 2, 4, 28);
                }
                player.lives--;
                player.jumpTimer = 0;
                player.x = 108;
                player.y = 136;
                player.damageBuffer = 50;
            }  
        }

        // Collision with bubbles
        for (int j = 0; j < 3; j++) { 
            if (bubbles[j].active && !enemies[i].inBubble && !enemies[i].isFruit && collision(enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height, bubbles[j].x, bubbles[j].y, bubbles[j].width, bubbles[j].height)) {
                enemies[i].inBubble = 1;
                enemies[i].bubbleTimer = 300;
                bubbles[j].active = 0;
                player.numOfBubbles++;
            }
        }
        // In a bubble - Timer
        if (enemies[i].inBubble) { 
            enemies[i].bubbleTimer--;
            if (enemies[i].bubbleTimer == 0) {
                enemies[i].inBubble = 0;
            }
        } else if (enemies[i].isFruit) {
            enemies[i].bubbleTimer--;
            if (enemies[i].bubbleTimer == 0) {
                enemies[i].active = 0;
            }
        }

        // Animation
        if (!enemies[i].isFruit) {
            enemies[i].timeUntilNextFrame--;
            if (enemies[i].timeUntilNextFrame == 0) {
                enemies[i].timeUntilNextFrame = 20;
                if (enemies[i].inBubble) {
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % enemies[i].bubbleFrames;
                } else if (enemies[i].chargeFireball) {
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % enemies[i].fireballFrames;
                    if (enemies[i].currentFrame == enemies[i].fireballFrames - 1) {
                        enemies[i].chargeFireball = 0;
                        enemies[i].currentFrame = 0;
                        for (int k = 0; i < 4; k++) {
                            if (!fireballs[k].active) {
                                fireballs[k].active = 1;
                                fireballs[k].timeUntilNextFrame = 10;
                                fireballs[k].currentFrame = 0;
                                fireballs[k].x = enemies[i].x;
                                if (enemies[i].direction == RIGHT) {
                                    fireballs[k].x += enemies[i].width;
                                }
                                fireballs[k].y = enemies[i].y + enemies[i].height;
                                break;
                            }
                        }
                    }
                } else {
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % enemies[i].numFrames;
                }
            }
        }
    }

    // Update Fireballs
    updateFireball();

    // Update Score
    updateShadowOAM();

    // fireballs
    for (int i = 0; i < 4; i++) {
        if (!fireballs[i].active) {
            shadowOAM[fireballs[i].oamIndex].attr0 = ATTR0_HIDE;
            continue;
        }
        shadowOAM[fireballs[i].oamIndex].attr0 = ATTR0_Y(fireballs[i].y) | ATTR0_SQUARE;
        shadowOAM[fireballs[i].oamIndex].attr1 = ATTR1_X(fireballs[i].x) | ATTR1_SMALL;
        if (fireballs[i].dispel) {
            shadowOAM[fireballs[i].oamIndex].attr2 = ATTR2_TILEID(fireballs[i].currentFrame * 2 + 26, 6);
        } else {
            shadowOAM[fireballs[i].oamIndex].attr2 = ATTR2_TILEID(fireballs[i].currentFrame * 2 + 18, 6);
        }
    }

    // Check for level completion
    level = 0;
    for (int i = 0; i < 6; i++) {
        if (enemies[i].active) {
            level = 2;
        }
    }
    if (level == 0) {
        hideSprites();
        // Score
        shadowOAM[hundreds.oamIndex].attr0 = ATTR0_Y(hundreds.y) | ATTR0_TALL;
        shadowOAM[hundreds.oamIndex].attr1 = ATTR1_X(hundreds.x) | ATTR1_TINY;
        shadowOAM[hundreds.oamIndex].attr2 = ATTR2_TILEID(hundreds.number + 17, 15);

        shadowOAM[tens.oamIndex].attr0 = ATTR0_Y(tens.y) | ATTR0_TALL;
        shadowOAM[tens.oamIndex].attr1 = ATTR1_X(tens.x) | ATTR1_TINY;
        shadowOAM[tens.oamIndex].attr2 = ATTR2_TILEID(tens.number + 17, 15);

        shadowOAM[ones.oamIndex].attr0 = ATTR0_Y(ones.y) | ATTR0_TALL;
        shadowOAM[ones.oamIndex].attr1 = ATTR1_X(ones.x) | ATTR1_TINY;
        shadowOAM[ones.oamIndex].attr2 = ATTR2_TILEID(ones.number + 17, 15);
        player.currentFrame = 0;
    }
}

void updateFireball() {
    // Update Fireballs
    for (int i = 0; i < 4; i++) {
        if (fireballs[i].active) {
            if (!fireballs[i].dispel) {
                fireballs[i].y++;
                if (fireballs[i].y > 162) {
                    fireballs[i].active = 0;
                }
                if (collision(fireballs[i].x, fireballs[i].y, fireballs[i].width, fireballs[i].height, player.x, player.y, player.width, player.height)) {
                    fireballs[i].dispel = 1;
                    if (player.damageBuffer == 0) {
                        if (player.lives == 3) {
                            setTile(11, 0, 4, 28);
                            setTile(12, 0, 4, 28);
                            setTile(11, 1, 4, 28);
                            setTile(12, 1, 4, 28);
                            setTile(11, 2, 4, 28);
                            setTile(12, 2, 4, 28);
                        } else {
                            setTile(9, 0, 4, 28);
                            setTile(10, 0, 4, 28);
                            setTile(9, 1, 4, 28);
                            setTile(10, 1, 4, 28);
                            setTile(9, 2, 4, 28);
                            setTile(10, 2, 4, 28);
                        }
                        player.lives--;
                        player.jumpTimer = 0;
                        player.x = 108;
                        player.y = 136;
                        player.damageBuffer = 50;
                    }
                }
            }
            fireballs[i].timeUntilNextFrame--;
            if (fireballs[i].timeUntilNextFrame == 0) {
                fireballs[i].timeUntilNextFrame = 10;
                if (fireballs[i].dispel) {
                    fireballs[i].currentFrame = (fireballs[i].currentFrame + 1) % fireballs[i].dispelFrames;
                    if (fireballs[i].currentFrame == fireballs[i].dispelFrames - 1) {
                        fireballs[i].active = 0;
                        fireballs[i].dispel = 0;
                    }
                } else {
                    fireballs[i].currentFrame = (fireballs[i].currentFrame + 1) % fireballs[i].numFrames;
                }
            }
        }
    }
}

void updateBubbles() {
    // update bubbles
    for (int i = 0; i < 3; i++) {
        if (bubbles[i].active) {
            bubbles[i].timer--;
            if (bubbles[i].timer == 0 || bubbles[i].y < 32) {
                bubbles[i].active = 0;
                player.numOfBubbles++;
            } else {
                if (bubbles[i].x + bubbles[i].xVel > 17 
                && bubbles[i].x + bubbles[i].xVel < 207 
                && bubbles[i].x - bubbles[i].oldX != 20
                && bubbles[i].x - bubbles[i].oldX != -40) {
                bubbles[i].x += bubbles[i].xVel;
                } else if (bubbles[i].y) {
                    bubbles[i].y--;
                }
            }
        }
    }
}

void updatePlayer() {
    if (player.damageBuffer != 0) player.damageBuffer--; // lag for taking damage
    if (player.jumpTimer != 0) player.jumpTimer--; // height of each jump

    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;

    // update player movement
    player.isMoving = 0;
    if (BUTTON_HELD(BUTTON_LEFT)) {
        if (colorAt(leftX - player.xVel, topY) && colorAt(leftX - player.xVel, bottomY)) {
            player.x -= player.xVel;
        }
        player.direction = LEFT;
        player.isMoving = 1;
    } else if (BUTTON_HELD(BUTTON_RIGHT)) {
        if (player.x < (SCREENWIDTH - player.width) && colorAt(rightX + player.xVel, topY) && colorAt(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }
        player.direction = RIGHT;
        player.isMoving = 1;
    }
    if (BUTTON_PRESSED(BUTTON_UP) && player.y > 32 && (!colorAt(leftX, bottomY + player.yVel) || !colorAt(rightX, bottomY + player.yVel))) {
        // no collision checks when jumping
        // start jump
        if (player.jumpTimer == 0) {
            player.jumpTimer = 35;
            player.y -= player.yVel;
            player.isMoving = 1;
        }
        if (player.direction == RIGHT || player.direction == UP_RIGHT) {
            player.direction = UP_RIGHT;
        } else {
            player.direction = UP_LEFT;
        }
    } else if (player.jumpTimer != 0 && player.y > 32) {
        // complete jump
        player.y -= player.yVel;
        player.isMoving = 1;
        if (player.direction == RIGHT || player.direction == UP_RIGHT) {
            player.direction = UP_RIGHT;
        } else {
            player.direction = UP_LEFT;
        }
    } else if (player.y < (SCREENHEIGHT - player.height) && colorAt(leftX, bottomY + player.yVel) && colorAt(rightX, bottomY + player.yVel)) {
        // fall if there's nothing underneath
        player.y += player.yVel;
        if (player.direction == RIGHT || player.direction == UP_RIGHT) {
            player.direction = UP_RIGHT;
        } else {
            player.direction = UP_LEFT;
        }
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        player.bubbleCounter = 30;
        player.isMoving = 1;
        if (player.numOfBubbles > 0) {
            player.numOfBubbles--;
            for (int i = 0; i < 3; i++) {
                if (!bubbles[i].active) {
                    bubbles[i].active = 1;
                    bubbles[i].y = player.y;
                    bubbles[i].timer = 300;
                    if (player.direction == LEFT || player.direction == UP_LEFT) {
                        bubbles[i].oldX = player.x;
                        bubbles[i].xVel = -1;
                        bubbles[i].x = player.x - bubbles[i].width;
                        if (bubbles[i].x < 8) {
                            bubbles[i].x = 8;
                        }
                    } else {
                        bubbles[i].oldX = player.x + player.width;
                        bubbles[i].xVel = 1;
                        bubbles[i].x = player.x + player.width;
                        if (bubbles[i].x > 218) {
                            bubbles[i].x = 218;
                        }
                    }
                    break;
                }
            }
        
        }
    }
    if (player.bubbleCounter != 0) {
        player.bubbleCounter--;
    }
    if (player.isMoving) {
        player.timeUntilNextFrame--;
        if (player.timeUntilNextFrame == 0) {
            if (!((player.direction == UP_LEFT || player.direction == UP_RIGHT) && player.currentFrame == 3)) {
                player.currentFrame = (player.currentFrame + 1) % player.moveFrames;
            }
            player.timeUntilNextFrame = 10;
        }
    } else {
        player.currentFrame = 0;
    }
}

void updateShadowOAM() {
    // Food Animation
    if (scoreAnimation.isAnimating) {
        scoreAnimation.timeUntilNextFrame--;
        if (scoreAnimation.timeUntilNextFrame == 0) {
            scoreAnimation.isAnimating = 0;
        }
    }
    // Update score
    hundreds.number = score / 100;
    tens.number = (score / 10) % 10;

    // update shadowOAM

    // score animation
    shadowOAM[scoreAnimation.oamIndex].attr0 = ATTR0_Y(scoreAnimation.y) | ATTR0_SQUARE;
    shadowOAM[scoreAnimation.oamIndex].attr1 = ATTR1_X(scoreAnimation.x) | ATTR1_SMALL;
    shadowOAM[scoreAnimation.oamIndex].attr2 = ATTR2_TILEID(12, 16);
    if (!scoreAnimation.isAnimating) {
        shadowOAM[scoreAnimation.oamIndex].attr0 = ATTR0_HIDE;
    }

    // Score
    shadowOAM[hundreds.oamIndex].attr0 = ATTR0_Y(hundreds.y) | ATTR0_TALL;
    shadowOAM[hundreds.oamIndex].attr1 = ATTR1_X(hundreds.x) | ATTR1_TINY;
    shadowOAM[hundreds.oamIndex].attr2 = ATTR2_TILEID(hundreds.number + 17, 15);

    shadowOAM[tens.oamIndex].attr0 = ATTR0_Y(tens.y) | ATTR0_TALL;
    shadowOAM[tens.oamIndex].attr1 = ATTR1_X(tens.x) | ATTR1_TINY;
    shadowOAM[tens.oamIndex].attr2 = ATTR2_TILEID(tens.number + 17, 15);

    shadowOAM[ones.oamIndex].attr0 = ATTR0_Y(ones.y) | ATTR0_TALL;
    shadowOAM[ones.oamIndex].attr1 = ATTR1_X(ones.x) | ATTR1_TINY;
    shadowOAM[ones.oamIndex].attr2 = ATTR2_TILEID(ones.number + 17, 15);

    // Player
    shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y) | ATTR0_SQUARE;
    shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x) | ATTR1_SMALL;
    if (player.direction == RIGHT || player.direction == UP_RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
    }
    if (player.bubbleCounter != 0) {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(2 * player.currentFrame, 6);
    } else if (player.direction < 2) {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(2 * player.currentFrame, 0);
    } else {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(2 * player.currentFrame, 4);
    }

    // Bubbles
    for (int i = 0; i < 3; i++) {
        if (bubbles[i].active) {
            shadowOAM[bubbles[i].oamIndex].attr0 = ATTR0_Y(bubbles[i].y) | ATTR0_SQUARE;
            shadowOAM[bubbles[i].oamIndex].attr1 = ATTR1_X(bubbles[i].x) | ATTR1_SMALL;
            shadowOAM[bubbles[i].oamIndex].attr2 = ATTR2_TILEID(12, 14);
        } else {
            shadowOAM[bubbles[i].oamIndex].attr0 = ATTR0_HIDE;
        }
    }

    // Enemies
    for (int i = 0; i < 6; i++) {
        if (!enemies[i].active) {
            shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_HIDE;
            continue;
        }
        shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_Y(enemies[i].y) | ATTR0_SQUARE;
        shadowOAM[enemies[i].oamIndex].attr1 = ATTR1_X(enemies[i].x) | ATTR1_SMALL;
        if (enemies[i].eType == ROBOT) {
            if (enemies[i].inBubble) {
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(enemies[i].currentFrame * 2 + 16, 0);
            } else if (enemies[i].isFruit) {
               shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(enemies[i].food * 2, 16);
            } else {
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(enemies[i].currentFrame * 2 + 8, 0);
            }
            
            if (enemies[i].direction == RIGHT) {
                shadowOAM[enemies[i].oamIndex].attr1 |= ATTR1_HFLIP;
            }     
        
        } else if (enemies[i].eType == GHOST) {
            if (enemies[i].inBubble) {
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(enemies[i].currentFrame * 2 + 12, 6);
            } else if (enemies[i].isFruit) {
               shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(enemies[i].food * 2, 16);
            } else {
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(enemies[i].currentFrame * 2 + 8, 6);
            }
            if (enemies[i].direction == RIGHT) {
                shadowOAM[enemies[i].oamIndex].attr1 |= ATTR1_HFLIP;
            } 
        } else if (enemies[i].eType == WIZARD) {
            if (enemies[i].inBubble) {
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(enemies[i].currentFrame * 2 + 16, 2);
            } else if (enemies[i].isFruit) {
               shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(enemies[i].food * 2, 16);
            } else if (enemies[i].chargeFireball) {
                shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_Y(enemies[i].y) | ATTR0_WIDE;
                shadowOAM[enemies[i].oamIndex].attr1 = ATTR1_X(enemies[i].x) | ATTR1_MEDIUM;
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(enemies[i].currentFrame * 4 + 8, 4);
            } else {
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(enemies[i].currentFrame * 2 + 8, 2);
            }
            if (enemies[i].direction == RIGHT) {
                shadowOAM[enemies[i].oamIndex].attr1 |= ATTR1_HFLIP;
            } 
        }
    }

}
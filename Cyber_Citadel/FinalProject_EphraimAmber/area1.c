#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "game.h"
#include "backgrounds.h"
#include "spritesheets.h"
#include "hit.h"

// ShadowOAM
OBJ_ATTR shadowOAM[128];

// Button register
extern unsigned short oldButtons;
extern unsigned short buttons;

// State machine
extern enum STATE {SPLASH, INSTRUCTIONS, PAUSE, OPEN_INVENTORY, STORE, GAME, LOSE, WIN, TEXT} state;
extern enum LAUNCH_TEXT {A, B, C, D, E, F, CAT, MAP, COMPLETED} ltext;
// Collision map
void* cm;

// PLAYER
PLAYER player;
// marker
SPRITE plumbob;
// color scheme
extern int pal;

// People
extern NPC people[6];

// Enemies
ENEMY enemies[6];
BULLET electricity[10];

// COLLECTIBLES
WEAPON allWeapons[4];
ITEM allItems[22];

// Switch maps
int toShops;
int toText;

// INVENTORY
INVENTORY inventory;

// gun
BULLET bullets[4];

// Delay
int delay;

void initArea1() {
    plumbob.active = 0;
    toShops = 0;
    delay = 0;
    toText = 0;

    if (pal != 0) {
        setColor();
    }
    // set collision map
    cm = area1cmBitmap;
    // 0 - can't walk
    // 1 - get area2 map
    // 2 - back to shops

    // set player position
    if (state != PAUSE && state != OPEN_INVENTORY && state != TEXT) {
        player.x = 445;
        player.y = 440;
        player.direction = IDLE_LEFT;
        // Reset values
        player.jumping = 0;
        player.falling = 0;
        player.isAttacking = 0;
        player.damageBuffer = 0;

        for(int i = 0; i < 6; i++) {
            // Enemies
            if (i < 3) {
                enemies[i].width = 30;
                enemies[i].height = 32;
                enemies[i].enemyType = ROBOT;
                enemies[i].enemyDirection = DOWN;
                enemies[i].damage = 3;
                enemies[i].health = 4;
            } else if (i < 5) {
                enemies[i].width = 30;
                enemies[i].height = 40;
                enemies[i].enemyType = SHOOTER;
                enemies[i].damage = 4;
                enemies[i].health = 5;
            } else {
                enemies[i].width = 16;
                enemies[i].height = 8;
                enemies[i].enemyType = BIRD;
                enemies[i].x = 0;
                enemies[i].y = 200;
                enemies[i].damage = 2;
                enemies[i].health = 1;
            }
            enemies[i].isAttacking = 0;
            enemies[i].oamIndex = i + 3;
            enemies[i].xVel = 1;
            enemies[i].yVel = 1;
            enemies[i].palRow = 1;
            enemies[i].timeUntilNextFrame = 10;
            enemies[i].currentFrame = 0;
            enemies[i].numFrames = 4;
            enemies[i].active = 1;
            enemies[i].damageBuffer = 0;
        }
        // ROBOTS
        enemies[0].x = 356;
        enemies[0].y = 380;
        enemies[0].originalY = 380;
        enemies[1].x = 183;
        enemies[1].y = 320;
        enemies[1].originalY = 320;
        enemies[2].x = 446;
        enemies[2].y = 200;
        enemies[2].originalY = 200;
        // SHOOTERS
        enemies[3].x = 186;
        enemies[3].y = 208;
        enemies[4].x = 146;
        enemies[4].y = 72;
        // BIRD
        enemies[5].active = 0;
        enemies[5].attackTimer = 500;
        enemies[5].isAttacking = 1;
    }
    for (int i = 0; i < 10; i++) {
        // Bullets
        electricity[i].width = 2;
        electricity[i].height = 2;
        electricity[i].damage = 3;
        electricity[i].active = 0;
        electricity[i].oamIndex = 9 + i;
        electricity[i].palRow = 1;
    }
    
}

void updateArea1() {
    if (toShops) {
        goToShops();
    } else {
        plumbob.active = 0;
        updatePlayer();
        updateEnemiesArea1();
        updateBullets();
        // find map to next area
        if (player.x > 0 && player.x < 40 && player.y < 81) {
            if (!inventory.area2Map) {
                ltext = MAP;
                toText = 1;
                inventory.area2Map = 1;;
            }
        }
        // conditionals to advance to new maps and win/lose state before drawing
        if (player.health <= 0) {
            player.health = player.maxHealth;
            goToLose();
        } else if (toText) {
            goToText();
        } else {
            draw();
        }
    }
}

void plumbobArea1(int left, int right) {
    if (left == 2 || right == 2) { // back to shops
        plumbob.active = 1;
        plumbob.palRow = 10;
        if (BUTTON_PRESSED(BUTTON_A)) {
            toShops = 1;
        }
    } 
}

void updateEnemiesArea1() {
    delay++;
    enemies[5].attackTimer--;
    if (!enemies[5].attackTimer) {
        enemies[5].active = 1;
        enemies[5].y = player.y + 10;
        enemies[5].x = 0;
    }
    for(int i = 0; i < 6; i++) {
        if (delay % 2 == 0) continue;
        if (!enemies[i].active) {
            shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_HIDE;
            continue;
        }
        if (enemies[i].damageBuffer != 0) enemies[i].damageBuffer--;
        // player deals damage to enemy
        for(int j = 0; j < 4; j++) {
            if (collision(bullets[j].x, bullets[j].y, bullets[j].width, bullets[j].height, enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
                enemies[i].active = 0;
                inventory.credits += (rand() % 101) + 50;
            }
        }
        if (player.dealingDamage && enemies[i].damageBuffer == 0 && collision(player.equippedWeapon.x, player.equippedWeapon.y, player.equippedWeapon.width, player.equippedWeapon.height,
            enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
            enemies[i].health -= player.baseDamage + player.equippedWeapon.damage + player.damageBoost;
            enemies[i].damageBuffer = 20;
            if (enemies[i].enemyType == SHOOTER) enemies[i].currentFrame = 0;  
            if (enemies[i].health <= 0) {
                enemies[i].active = 0;
                inventory.credits += (rand() % 101) + 50;
            }
            if (enemies[i].enemyType == BIRD) enemies[i].attackTimer = 500;
        }
        // Check for dealing damage to player
        if (enemies[i].isAttacking) {
            if (enemies[i].active && player.damageBuffer == 0 && collision(player.x + 8, player.y, 16, player.height, enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
                player.health -= (enemies[i].damage - player.defenseBoost);
                player.damageBuffer = 45;
                playSoundB(hit_data, hit_length, 0);
                if (people[0].talk && enemies[i].enemyType == BIRD) {
                    people[0].num = 0;
                }
                if (people[4].talk && people[4].num > 0 && enemies[i].enemyType == ROBOT) {
                    people[4].num--;
                }
            }
        }
        switch(enemies[i].enemyType) {
            case ROBOT:
                if (!enemies[i].isAttacking && enemies[i].enemyDirection == DOWN) { //movement
                    enemies[i].y += enemies[i].yVel;
                    if (enemies[i].y - enemies[i].originalY >= 20) {
                        enemies[i].enemyDirection = UP;
                    }
                } else if (!enemies[i].isAttacking && enemies[i].enemyDirection == UP) {
                    enemies[i].y -= enemies[i].yVel;
                    if (enemies[i].y == enemies[i].originalY) {
                        enemies[i].isAttacking = 1;
                        enemies[i].currentFrame = 0;
                        enemies[i].enemyDirection = DOWN;
                    }
                }
                // animation
                enemies[i].timeUntilNextFrame--;
                if (!enemies[i].timeUntilNextFrame) {
                    enemies[i].timeUntilNextFrame = 10;
                    if (enemies[i].isAttacking) {
                        enemies[i].currentFrame += 1;
                        if (enemies[i].currentFrame == 4) {
                            enemies[i].isAttacking = 0;
                        }
                        enemies[i].currentFrame--;
                        enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 4;
                    } else {
                        enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 2;
                    }
                }
                // update shadowOAM
                shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_Y(screenY(enemies[i].y, enemies[i].height)) | ATTR0_SQUARE;
                shadowOAM[enemies[i].oamIndex].attr1 = ATTR1_X(screenX(enemies[i].x, enemies[i].width)) | ATTR1_MEDIUM;
                if (enemies[i].damageBuffer != 0) {
                    shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(28, 15)| ATTR2_PALROW(enemies[i].palRow);
                } else if (enemies[i].isAttacking) {
                    shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(4 * enemies[i].currentFrame, 20) | ATTR2_PALROW(enemies[i].palRow);
                } else {
                    shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(24, 11) | ATTR2_PALROW(enemies[i].palRow);
                }
                break;
            case SHOOTER:
                // if enemy is on screen attack
                if (screenY(enemies[i].y, enemies[i].height) > 160 && screenX(enemies[i].x, enemies[i].width) > 240) {
                    shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_Y(screenY(enemies[i].y, enemies[i].height)) | ATTR0_TALL;
                    shadowOAM[enemies[i].oamIndex].attr1 = ATTR1_X(screenX(enemies[i].x, enemies[i].width)) | ATTR1_LARGE;
                    shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(0, 24) | ATTR2_PALROW(enemies[i].palRow);
                    continue;
                }
                enemies[i].timeUntilNextFrame--;
                if (!enemies[i].timeUntilNextFrame) {
                    enemies[i].timeUntilNextFrame = 25;
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 4;
                    if (enemies[i].currentFrame == 3) {
                        int spawned = 0;
                        for(int j = 0; j < 10; j++) {
                            if (!electricity[j].active) {
                                electricity[j].active = 1;
                                electricity[j].timer = 75;
                                if (player.x < enemies[i].x) { // left or right
                                    electricity[j].xVel = -1;
                                    electricity[j].x = enemies[i].x + 8 * spawned;
                                } else {
                                    electricity[j].xVel = 1;
                                    electricity[j].x = enemies[i].x + 20 + 8 * spawned;
                                }
                                if (player.y < enemies[i].y) { // up straight or down
                                    electricity[j].yVel = -1;
                                    electricity[j].y = enemies[i].y;
                                } else if (player.y > enemies[i].y + enemies[i].height) {
                                    electricity[j].yVel = 1;
                                    electricity[j].y = enemies[i].y + 34;
                                } else {
                                    electricity[j].yVel = 0;
                                    electricity[j].y = enemies[i].y + 19;
                                }
                                spawned++;
                                if (spawned == 2) break;
                            }
                        }
                    }
                }
                // Update shadowOAM
                shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_Y(screenY(enemies[i].y, enemies[i].height)) | ATTR0_TALL;
                shadowOAM[enemies[i].oamIndex].attr1 = ATTR1_X(screenX(enemies[i].x, enemies[i].width)) | ATTR1_LARGE;
                if (enemies[i].damageBuffer != 0) {
                    shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(0, 24) | ATTR2_PALROW(8);
                } else {
                    if (enemies[i].currentFrame < 2) {
                        shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(4 * enemies[i].currentFrame, 24) | ATTR2_PALROW(enemies[i].palRow);
                    } else {
                        if (player.y > enemies[i].y + enemies[i].height) { //shoot down
                            shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(4 * enemies[i].currentFrame + 8, 24) | ATTR2_PALROW(enemies[i].palRow);
                        } else if (player.y < enemies[i].y) { //shoot up
                            shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(4 * enemies[i].currentFrame + 16, 24) | ATTR2_PALROW(enemies[i].palRow);
                        } else { //shoot straight
                            shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(4 * enemies[i].currentFrame, 24) | ATTR2_PALROW(enemies[i].palRow);
                        }
                    }
                }
                if (enemies[i].x > player.x) shadowOAM[enemies[i].oamIndex].attr1 |= ATTR1_HFLIP;
                break;
            case BIRD:
                enemies[i].timeUntilNextFrame--;
                if (!enemies[i].timeUntilNextFrame) {
                    enemies[i].timeUntilNextFrame = 10;
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 6;
                }
                enemies[i].x += 2;
                if (enemies[i].x > 512) {
                    enemies[i].active = 0;
                    enemies[i].attackTimer = 500;
                }
                // Update shadowOam
                shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_Y(screenY(enemies[i].y, enemies[i].height)) | ATTR0_WIDE;
                shadowOAM[enemies[i].oamIndex].attr1 = ATTR1_X(screenX(enemies[i].x, enemies[i].width)) | ATTR1_TINY;
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(16 + 2 * enemies[i].currentFrame, 20) | ATTR2_PALROW(enemies[i].palRow);
            break;
        }
    }
}

void updateBullets() {
    for(int i = 0; i < 10; i++) {
        if (!electricity[i].active) {
            shadowOAM[electricity[i].oamIndex].attr0 = ATTR0_HIDE;
            continue;
        }
        electricity[i].timer--;
        // player collision with bullets
        if (!player.damageBuffer && collision(player.x + 8, player.y, 16, player.height, electricity[i].x, electricity[i].y, electricity[i].width, electricity[i].height)) {
            player.health -= (enemies[i].damage - player.defenseBoost);
            player.damageBuffer = 45;
            playSoundB(hit_data, hit_length, 0);
        }
        electricity[i].x += electricity[i].xVel;
        electricity[i].y += electricity[i].yVel;
        if (electricity[i].timer == 0) {
            electricity[i].active = 0;
        }
        shadowOAM[electricity[i].oamIndex].attr0 = ATTR0_Y(screenY(electricity[i].y, electricity[i].height)) | ATTR0_SQUARE;
        shadowOAM[electricity[i].oamIndex].attr1 = ATTR1_X(screenX(electricity[i].x, electricity[i].width)) | ATTR1_TINY;
        shadowOAM[electricity[i].oamIndex].attr2 = ATTR2_TILEID(21, 3) | ATTR2_PALROW(electricity[i].palRow);
    }
}
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
extern enum STATE {SPLASH, INSTRUCTIONS, PAUSE, OPEN_INVENTORY, STORE, GAME, LOSE, WIN} state;

// Collision map
void* cm;

// PLAYER
PLAYER player;
// marker
SPRITE plumbob;
// color scheme
extern int pal;

// COLLECTIBLES
WEAPON allWeapons[4];
ITEM allItems[22];

// gun
BULLET bullets[4];

// Switching maps
int toWin;
int phase1;
int phase2;
int cutScene;

// INVENTORY
INVENTORY inventory;

// ENEMIES
ENEMY enemies[2];
BULLET golfballs[10];
ENEMY boss;
SPRITE car1;
SPRITE car2;

int delay;

void initFinal() {
    // Set collision map
    cm = finalcmBitmap;
    plumbob.active = 0;
    // Set color scheme
    if (pal != 0) {
        setColor();
    }
    showCar();
    if (state != PAUSE && state != OPEN_INVENTORY) {
        // Set up phases
        phase1 = 1;
        phase2 = 0;
        cutScene = 0;
        // set player position
        player.jumping = 0;
        player.falling = 0;
        player.isAttacking = 0;
        player.x = 113;
        player.y = 132;
        player.direction = IDLE_LEFT;
        // Initialize enemies
        for(int i = 0; i < 2; i++) {
            enemies[i].width = 32;
            enemies[i].height = 32;
            enemies[i].damage = 2;
            enemies[i].health = 6;
            enemies[i].isAttacking = 0;
            enemies[i].oamIndex = i + 3;
            enemies[i].palRow = 1;
            enemies[i].timeUntilNextFrame = 1;
            enemies[i].currentFrame = 0;
            enemies[i].numFrames = 2;
            enemies[i].active = 1;
            enemies[i].damageBuffer = 0;
            enemies[i].enemyType = MACHINE;
            enemies[i].damage = 4;
        }
        enemies[0].x = 11;
        enemies[0].y = 193;
        enemies[0].enemyDirection = RIGHT;
        enemies[1].x = 215;
        enemies[1].y = 193;
        enemies[1].enemyDirection = LEFT;
        enemies[1].timeUntilNextFrame = 100;

        // Initialize golfballs
        for (int i = 0; i < 10; i++) {
            // Bullets
            golfballs[i].width = 8;
            golfballs[i].height = 2;
            golfballs[i].damage = 2;
            golfballs[i].active = 0;
            golfballs[i].oamIndex = 9 + i;
            golfballs[i].palRow = 1;
        }

        // Setup cutscene sprites
        car1.x = 440;
        car1.y = 172;
        car1.palRow = 3;
        car1.oamIndex = 20;
        car2.x = car1.x - 8;
        car2.y = car1.y + 32;
        car2.palRow = 3;
        car2.oamIndex = 21;

        boss.width = 32;
        boss.xVel = 1;
        boss.height = 32;
        boss.active = 1;
        boss.oamIndex = 6;
        boss.palRow = 2;
        boss.health = 15;
        boss.damage = 5;
        boss.timeUntilNextFrame = 10;
    }
}

void updateFinal() {
    showCar();
    if (phase1) {
        if (!enemies[0].active && !enemies[1].active) {
            phase1 = 0;
            for(int i = 0; i < 10; i++) {
                golfballs[i].active = 0;
            }
        }
        updatePlayer();
        if (player.x < 11) player.x = 11;
        if (player.x > 222) player.x = 222;
        updateEnemiesFinal();
        updateGolfballs();
    } else if (phase2) {
        if (cutScene) {
            updateScene();
        } else {
            updatePlayer();
            if (player.x < 266) player.x = 266;
            if (player.x > 480) player.x = 480;
            updateBoss();
        }
    } else {
        updatePlayer();
        if(player.x > 330) {
            phase2 = 1;
            cutScene = 1;
            updatePlayer();
            shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(0, 0); // Reset player tile
        }
    }
    if (player.health <= 0) {
        player.health = player.maxHealth;
        goToLose();
    } else if (!boss.active) {
        goToWin();
    } else {
        draw();
    }
}

void updateEnemiesFinal() {
    // Continue if not active
    for (int i = 0; i < 2; i++) {
        if (!enemies[i].active) {
            shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_HIDE;
            continue;
        }
        if (enemies[i].damageBuffer != 0) enemies[i].damageBuffer--;
        // Damage dealt by player

        for(int j = 0; j < 4; j++) {
            if (collision(bullets[j].x, bullets[j].y, bullets[j].width, bullets[j].height, enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
                enemies[i].active = 0;
                inventory.credits += (rand() % 101) + 50;
            }
        }

        if (player.dealingDamage && enemies[i].damageBuffer == 0 && collision(player.equippedWeapon.x, player.equippedWeapon.y, player.equippedWeapon.width, player.equippedWeapon.height,
            enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
            enemies[i].health -= player.baseDamage + player.equippedWeapon.damage + player.damageBoost;
            enemies[i].damageBuffer = 60;
            if (enemies[i].health <= 0) {
                enemies[i].active = 0;
                inventory.credits += (rand() % 101) + 50;
            }
        }
        if (enemies[i].damageBuffer == 0) {
             // Update Animation
            enemies[i].timeUntilNextFrame--;
            if (!enemies[i].timeUntilNextFrame) {
                enemies[i].timeUntilNextFrame = 100;
                enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 2;
                if (enemies[i].currentFrame == 1) {
                    for(int j = 0; j < 10; j++) {
                        if (!golfballs[j].active) {
                            golfballs[j].active = 1;
                            golfballs[j].timer = 300;
                            golfballs[j].y = 205;
                            if (enemies[i].enemyDirection == RIGHT) { // left or right
                                golfballs[j].xVel = 1;
                                golfballs[j].x = 38;
                            } else {
                                golfballs[j].xVel = -1;
                                golfballs[j].x = 208;
                            }
                            break;
                        }
                    }
                }
            }
        }
       
        // Update shadowOAM
        shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_Y(screenY(enemies[i].y, enemies[i].height)) | ATTR0_SQUARE;
        shadowOAM[enemies[i].oamIndex].attr1 = ATTR1_X(screenX(enemies[i].x, enemies[i].width)) | ATTR1_MEDIUM;
        if (enemies[i].damageBuffer != 0) {
            shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(28, 12) | ATTR2_PALROW(enemies[i].palRow);
        } else {
            shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(4 * enemies[i].currentFrame + 24, 8) | ATTR2_PALROW(enemies[i].palRow);
        }
        if (enemies[i].enemyDirection == LEFT) shadowOAM[enemies[i].oamIndex].attr1 |= ATTR1_HFLIP;
    }
}

void updateGolfballs() {
    for(int i = 0; i < 10; i++) {
        if (!golfballs[i].active) {
            shadowOAM[golfballs[i].oamIndex].attr0 = ATTR0_HIDE;
            continue;
        }
        // player collision with bullets
        if (!player.damageBuffer && collision(player.x + 8, player.y, 16, player.height, golfballs[i].x, golfballs[i].y, golfballs[i].width, golfballs[i].height)) {
            player.health -= (enemies[i].damage - player.defenseBoost);
            player.damageBuffer = 45;
            playSoundB(hit_data, hit_length, 0);
        }
        golfballs[i].timer--;
        golfballs[i].x += golfballs[i].xVel;
        if (golfballs[i].timer == 0) {
            golfballs[i].active = 0;
        }
        shadowOAM[golfballs[i].oamIndex].attr0 = ATTR0_Y(screenY(golfballs[i].y, golfballs[i].height)) | ATTR0_SQUARE;
        shadowOAM[golfballs[i].oamIndex].attr1 = ATTR1_X(screenX(golfballs[i].x, golfballs[i].width)) | ATTR1_TINY;
        shadowOAM[golfballs[i].oamIndex].attr2 = ATTR2_TILEID(21, 3) | ATTR2_PALROW(golfballs[i].palRow);
        if (golfballs[i].xVel == 1) shadowOAM[golfballs[i].oamIndex].attr1 |= ATTR1_HFLIP;
    }
}

void showCar() {
    shadowOAM[car1.oamIndex].attr0 = ATTR0_Y(screenY(car1.y, 0)) | ATTR0_SQUARE;
    shadowOAM[car1.oamIndex].attr1 = ATTR1_X(screenX(car1.x, 0)) | ATTR1_LARGE | ATTR1_HFLIP;
    shadowOAM[car1.oamIndex].attr2 = ATTR2_TILEID(0, 24) | ATTR2_PALROW(car1.palRow);
    shadowOAM[car2.oamIndex].attr0 = ATTR0_Y(screenY(car2.y, 0)) | ATTR0_TALL;
    shadowOAM[car2.oamIndex].attr1 = ATTR1_X(screenX(car2.x, 0)) | ATTR1_SMALL | ATTR1_HFLIP;
    shadowOAM[car2.oamIndex].attr2 = ATTR2_TILEID(8, 28) | ATTR2_PALROW(car1.palRow);
}

void updateScene() {
    boss.timeUntilNextFrame--;
    if (!boss.timeUntilNextFrame) {
        boss.timeUntilNextFrame = 23;
        boss.currentFrame++;
    }
    switch(boss.currentFrame) {
        case 0:
        case 1:
        boss.x = 455;
        boss.y = 186;
        break;
        case 2:
        boss.x = 454;
        boss.y = 186;
        break;
        case 3:
        boss.x = 457;
        boss.y = 193;
        break;
        case 4:
        boss.x = 456;
        boss.y = 193;
        break;
        case 5:
        boss.x = 455;
        boss.y = 192;
        cutScene = 0;
        break;
    }
    shadowOAM[boss.oamIndex].attr0 = ATTR0_Y(screenY(boss.y, boss.height)) | ATTR0_SQUARE;
    shadowOAM[boss.oamIndex].attr1 = ATTR1_X(screenX(boss.x, boss.width)) | ATTR1_MEDIUM | ATTR1_HFLIP;
    shadowOAM[boss.oamIndex].attr2 = ATTR2_TILEID(4 * boss.currentFrame, 20) | ATTR2_PALROW(boss.palRow);
    if (!cutScene) boss.currentFrame = 0;
    /* frame 0 x: 456 y:186
    frame 1 x:455 y:186
    frame 2 x:454 y: 186
    frame 3 x: 457 y:193
    frame 4 x:456 y: 193
    frame 5 x: 455 y: 192
    */
}

void updateBoss() {
    delay++;
    if (boss.damageBuffer != 0) boss.damageBuffer--;
    if (player.dealingDamage && boss.damageBuffer == 0 && collision(player.equippedWeapon.x, player.equippedWeapon.y, player.equippedWeapon.width, player.equippedWeapon.height,
        boss.x, boss.y, boss.width, boss.height)) {
        boss.health -= player.baseDamage + player.equippedWeapon.damage + player.damageBoost;
        boss.damageBuffer = 60;
        boss.currentFrame = 0;
        boss.isAttacking = 0;
        if (boss.health <= 0) {
            boss.active = 0;
            inventory.credits += 500; 
        }
    }

    for(int j = 0; j < 4; j++) {
        if (collision(bullets[j].x, bullets[j].y, bullets[j].width, bullets[j].height, boss.x, boss.y, boss.width, boss.height)) {
            boss.active = 0;
            inventory.credits += (rand() % 101) + 50;
        }
    }

    if (boss.isAttacking) {
        if ((boss.currentFrame == 3 || boss.currentFrame == 4) && !boss.damageBuffer && !player.damageBuffer && collision(player.x + 8, player.y, 16, player.height, boss.x, boss.y, boss.width, boss.height)) {
            player.health -= (boss.damage - player.defenseBoost);
            player.damageBuffer = 45;
            playSoundB(hit_data, hit_length, 0);
        }
    } else {
        if (delay % 2)  {
            if (boss.x - player.x < 20 && boss.x - player.x > -20) {
                boss.isAttacking = 1;
                boss.currentFrame = 0;
            } else if (player.x > boss.x) {
                boss.enemyDirection = RIGHT;
                boss.x += boss.xVel;
            } else {
                boss.enemyDirection = LEFT;
                boss.x -= boss.xVel;
            }
        }
        
    }
    if (boss.currentFrame == 4) boss.isAttacking = 0;
    boss.timeUntilNextFrame--;
    if (!boss.timeUntilNextFrame) {
        boss.timeUntilNextFrame = 13;
        boss.currentFrame = (boss.currentFrame + 1) % 5;
    }
    shadowOAM[boss.oamIndex].attr0 = ATTR0_Y(screenY(boss.y, boss.height)) | ATTR0_SQUARE;
    shadowOAM[boss.oamIndex].attr1 = ATTR1_X(screenX(boss.x, boss.width)) | ATTR1_MEDIUM;
    if (boss.damageBuffer != 0) {
        shadowOAM[boss.oamIndex].attr2 = ATTR2_TILEID(28, 20) | ATTR2_PALROW(boss.palRow);
    } else if (boss.isAttacking) {
        if (boss.currentFrame == 4) {
            shadowOAM[boss.oamIndex].attr0 = ATTR0_Y(screenY(boss.y, boss.height)) | ATTR0_WIDE;
            shadowOAM[boss.oamIndex].attr1 = ATTR1_X(screenX(boss.x - 15, boss.width)) | ATTR1_LARGE;
            shadowOAM[boss.oamIndex].attr2 = ATTR2_TILEID(24, 4) | ATTR2_PALROW(boss.palRow);
        } else if (boss.currentFrame == 3) {
            shadowOAM[boss.oamIndex].attr0 = ATTR0_Y(screenY(boss.y, boss.height)) | ATTR0_WIDE;
            shadowOAM[boss.oamIndex].attr1 = ATTR1_X(screenX(boss.x - 15, boss.width)) | ATTR1_LARGE;
            shadowOAM[boss.oamIndex].attr2 = ATTR2_TILEID(4 * boss.currentFrame + 12, 28) | ATTR2_PALROW(boss.palRow);
        } else {
            shadowOAM[boss.oamIndex].attr2 = ATTR2_TILEID(4 * boss.currentFrame + 12, 28) | ATTR2_PALROW(boss.palRow);
        }
    } else {
        shadowOAM[boss.oamIndex].attr2 = ATTR2_TILEID(4 * boss.currentFrame + 12, 24) | ATTR2_PALROW(boss.palRow);
    }
    if (boss.enemyDirection == LEFT) shadowOAM[boss.oamIndex].attr1 |= ATTR1_HFLIP;
}
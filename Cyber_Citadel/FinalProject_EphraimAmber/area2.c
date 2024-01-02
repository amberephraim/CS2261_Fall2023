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

// Switching maps
int toShops;
int toBoss;

// INVENTORY
INVENTORY inventory;

// ENEMIES
ENEMY enemies[3];

// People
extern NPC people[6];

// gun
BULLET bullets[4];

int delay;

void initArea2() {
    plumbob.active = 0;
    toShops = 0;
    toBoss = 0;
    delay = 0;
    inventory.bossOpen = 0;

    if (pal != 0) {
        setColor();
    }
    // set collision map
    cm = area2cmBitmap;
    // 0 - can't walk
    // 1 - door to final boss
    // 2 - back to shops

    // set player position
    player.jumping = 0;
    player.falling = 0;
    player.isAttacking = 0;
    if (state != PAUSE && state != OPEN_INVENTORY) {
        player.x = 27;
        player.y = 152;
        player.direction = IDLE_RIGHT;

        for (int i = 0; i < 3; i++) {
            enemies[i].xVel = 1;
            enemies[i].yVel = 1;
            enemies[i].width = 32;
            enemies[i].height = 32;
            enemies[i].damage = 4;
            enemies[i].health = 6;
            enemies[i].isAttacking = 0;
            enemies[i].oamIndex = i + 3;
            enemies[i].palRow = 1;
            enemies[i].timeUntilNextFrame = 10;
            enemies[i].currentFrame = 0;
            enemies[i].numFrames = 6;
            enemies[i].active = 1;
            enemies[i].damageBuffer = 0;
            enemies[i].enemyType = SKATEBOARD;
            enemies[i].damage = 4;
            if (i == 2) {
                enemies[i].health = 10;
                enemies[i].enemyType = BATTER;
            }
        }
        enemies[0].x = 252;
        enemies[0].y = 152;
        enemies[0].enemyDirection = RIGHT;
        enemies[1].x = 314;
        enemies[1].y = 288;
        enemies[1].enemyDirection = LEFT;
        enemies[2].x = 282;
        enemies[2].y = 448;
        enemies[2].enemyDirection = RIGHT;
    }
    

    
}

inline unsigned char colorAt(int x, int y) {
    return ((unsigned char *)cm) [OFFSET(x, y, 64 * 8)];
}

void updateArea2() {
    if (toShops) {
        goToShops();
    } else if (toBoss) {
        goToFinal();
    } else {
        plumbob.active = 0;
        updatePlayer();
        updateEnemiesArea2();
        // conditionals to advance to new maps and win/lose state before drawing
        if (player.health <= 0) {
            player.health = player.maxHealth;
            goToLose();
        } else {
            draw(); 
        }
    } 
}

void plumbobArea2(int left, int right) {
    if (left == 2 || right == 2) { // back to shops
        plumbob.active = 1;
        plumbob.palRow = 10;
        if (BUTTON_PRESSED(BUTTON_A)) {
            toShops = 1;
        }
    } else if (inventory.bossOpen && (left == 1 || right == 1)) {
        plumbob.active = 1;
        plumbob.palRow = 10;
        if (BUTTON_PRESSED(BUTTON_A)) {
            toBoss = 1;
        }
    }
}

void updateEnemiesArea2() {
    delay++;
    for(int i = 0; i < 3; i++) {
        // Continue if not active
        if (!enemies[i].active) {
            shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_HIDE;
            continue;
        }
        if (enemies[i].damageBuffer != 0) enemies[i].damageBuffer--;
        int leftX = enemies[i].x;
        int rightX = enemies[i].x + enemies[i].width - 1;
        int bottomY = enemies[i].y + enemies[i].height - 1;

        for(int j = 0; j < 4; j++) {
            if (collision(bullets[j].x, bullets[j].y, bullets[j].width, bullets[j].height, enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
                enemies[i].active = 0;
                inventory.credits += (rand() % 101) + 50;
                if (people[2].talk && enemies[i].enemyType == SKATEBOARD) {
                    people[2].num = 0;
                }
                if (i == 2) {
                    inventory.bossOpen = 1;
                    setTile(57, 53, 838, 18);
                    setTile(58, 53, 839, 18);
                    setTile(59, 53, 840, 18);
                    setTile(57, 58, 998, 18);
                    setTile(58, 58, 999, 18);
                    setTile(59, 58, 1000, 18);
                    for (int j = 0; j < 4; j++) {
                        setTile(57, 54 + j, 870, 18);
                        setTile(58, 54 + j, 871, 18);
                        setTile(59, 54 + j, 872, 18);
                    }
                }
            }
        }

        if (player.dealingDamage && enemies[i].damageBuffer == 0 && collision(player.equippedWeapon.x, player.equippedWeapon.y, player.equippedWeapon.width, player.equippedWeapon.height,
            enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
            enemies[i].health -= player.baseDamage + player.equippedWeapon.damage + player.damageBoost;
            enemies[i].damageBuffer = 60;
            if (enemies[i].health <= 0) {
                if (people[2].talk && enemies[i].enemyType == SKATEBOARD) {
                    people[2].num = 0;
                }
                enemies[i].active = 0;
                inventory.credits += (rand() % 101) + 50;
                if (i == 2) {
                    inventory.bossOpen = 1;
                    setTile(57, 53, 838, 18);
                    setTile(58, 53, 839, 18);
                    setTile(59, 53, 840, 18);
                    setTile(57, 58, 998, 18);
                    setTile(58, 58, 999, 18);
                    setTile(59, 58, 1000, 18);
                    for (int j = 0; j < 4; j++) {
                        setTile(57, 54 + j, 870, 18);
                        setTile(58, 54 + j, 871, 18);
                        setTile(59, 54 + j, 872, 18);
                    }
                }
            }
        }
        switch(enemies[i].enemyType) {
            case SKATEBOARD:
            if (!enemies[i].damageBuffer) {
                // Check for dealing damage to player
                if (!player.damageBuffer && collision(player.x + 8, player.y, 16, player.height, enemies[i].x + 14, enemies[i].y + 8, 8, enemies[i].height)) {
                    player.health -= (enemies[i].damage - player.defenseBoost);
                    player.damageBuffer = 45;
                    playSoundB(hit_data, hit_length, 0);
                }
                if (enemies[i].enemyDirection == RIGHT) {
                    enemies[i].x += enemies[i].xVel;
                    if (colorAt(rightX, bottomY + 1)) {
                        enemies[i].enemyDirection = LEFT;
                    }
                } else {
                    enemies[i].x -= enemies[i].xVel;
                    if (colorAt(leftX, bottomY + 1) || !colorAt(leftX - 1, bottomY)) {
                        enemies[i].enemyDirection = RIGHT;
                    }
                }
                enemies[i].timeUntilNextFrame--;
                if (!enemies[i].timeUntilNextFrame) {
                    enemies[i].timeUntilNextFrame = 10;
                    enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 6;
                }
            }
            shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_Y(screenY(enemies[i].y, enemies[i].height)) | ATTR0_SQUARE;
            shadowOAM[enemies[i].oamIndex].attr1 = ATTR1_X(screenX(enemies[i].x, enemies[i].width)) | ATTR1_MEDIUM;
            if (enemies[i].damageBuffer != 0) {
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(28, 28) | ATTR2_PALROW(enemies[i].palRow);
            } else {
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(4 * enemies[i].currentFrame, 28) | ATTR2_PALROW(enemies[i].palRow);
            }
            break;
            case BATTER:
            if (player.y > enemies[i].y - 60 && !enemies[i].damageBuffer) {
                if (enemies[i].isAttacking) {
                    if ((enemies[i].currentFrame == 3 || enemies[i].currentFrame == 4) && !player.damageBuffer && collision(player.x + 8, player.y, 16, player.height, enemies[i].x, enemies[i].y, enemies[i].width, enemies[i].height)) {
                        player.health -= (enemies[i].damage - player.defenseBoost);
                        player.damageBuffer = 45;
                        playSoundB(hit_data, hit_length, 0);
                    }
                } else {
                    if (delay % 2) continue;
                    if (enemies[i].x - player.x < 20 && enemies[i].x - player.x > -20) {
                        enemies[i].isAttacking = 1;
                        enemies[i].currentFrame = 0;
                    } else if (player.x > enemies[i].x) {
                        enemies[i].enemyDirection = RIGHT;
                        enemies[i].x += enemies[i].xVel;
                    } else {
                        enemies[i].enemyDirection = LEFT;
                        enemies[i].x -= enemies[i].xVel;
                    }
                }
            }
            enemies[i].timeUntilNextFrame--;
            if (!enemies[i].timeUntilNextFrame) {
                enemies[i].timeUntilNextFrame = 10;
                enemies[i].currentFrame = (enemies[i].currentFrame + 1) % 6;
            }
            shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_Y(screenY(enemies[i].y, enemies[i].height)) | ATTR0_SQUARE;
            shadowOAM[enemies[i].oamIndex].attr1 = ATTR1_X(screenX(enemies[i].x, enemies[i].width)) | ATTR1_MEDIUM;
            if (enemies[i].damageBuffer != 0) {
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(28, 20) | ATTR2_PALROW(enemies[i].palRow);
            } else if (enemies[i].isAttacking) {
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(4 * enemies[i].currentFrame, 24) | ATTR2_PALROW(enemies[i].palRow);
            } else {
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(4 * enemies[i].currentFrame, 20) | ATTR2_PALROW(enemies[i].palRow);
            }
            if (enemies[i].currentFrame == 5) enemies[i].isAttacking = 0;
            break;
        }
        if (enemies[i].enemyDirection == LEFT) shadowOAM[enemies[i].oamIndex].attr1 |= ATTR1_HFLIP;
    }
}
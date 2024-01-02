#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "game.h"
#include "backgrounds.h"
#include "spritesheets.h"
#include <time.h>
#include "shoot.h"

// ShadowOAM
OBJ_ATTR shadowOAM[128];

// Button register
extern unsigned short oldButtons;
extern unsigned short buttons;

// State machine
extern enum GAME_STATE {START, HOUSE, SHOPS, AREA1, AREA2, FINAL} gameState;
extern enum LAUNCH_TEXT {A, B, C, D, E, F, CAT, MAP, COMPLETED} ltext;
// Screen variables
extern int hOff0;
extern int vOff0;
extern int hOff1;
extern int vOff1;
extern int hOff2;
extern int vOff2;
extern int mapWidth;
extern int mapHeight;

// Final variables
extern int phase1;
extern int phase2;

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

// INVENTORY
INVENTORY inventory;

// gun
BULLET bullets[4];

// People
extern NPC people[6];

int temp = 0;

void initGame() {
    // Setup the game and starting variables
    srand(time(NULL));
    // WEAPONS
    WEAPON hands = {0, 0, 10, 3, 0, NONE, 0, 1};
    WEAPON blueKnife = {0, 0, 10, 3, 0, BLUE_KNIFE, 2, 0};
    WEAPON whiteKnife = {0, 0, 12, 3, 0, WHITE_KNIFE, 5, 0};
    WEAPON gun = {0, 0, 0, 0, 0, GUN, 100, 0};
    allWeapons[0] = hands;
    allWeapons[1] = blueKnife;
    allWeapons[2] = whiteKnife;
    allWeapons[3] = gun;

    // PLAYER
    // color scheme
    pal = 0;
    // basic
    player.xVel = 1;
    player.yVel = 1;
    player.width = 32;
    player.height = 32;
    player.jumping = 0;
    player.falling = 0;
    player.jumpTimer = 0;
    player.oamIndex = 1;
    
    // animation
    player.direction = IDLE_RIGHT;
    player.timeUntilNextFrame = 10;
    player.currentFrame = 0;

    // gameplay
    player.baseDamage = 1;
    player.defenseBoost = 0;
    player.damageBoost = 0;
    player.damageBuffer = 0;
    player.isAttacking = 0;
    player.health = 16;
    player.maxHealth = 16;
    player.equippedWeapon = allWeapons[NONE];
    player.fallDamage = 5;
    player.fallDamageTimer = 0;

    // PLUMBOB
    plumbob.oamIndex = 2;
    plumbob.numFrames = 4;

    // ITEMS
    allItems[0].collected = 1;
    allItems[0].used = 0;
    allItems[0].itemType = LOLLY;

    // INVENTORY
    inventory.credits = 60;
    inventory.maxItems = 22;
    inventory.area2Map = 0;

    // bullets
    for (int i = 0; i < 4; i++) {
        // Bullets
        bullets[i].width = 8;
        bullets[i].height = 6;
        bullets[i].damage = 100;
        bullets[i].active = 0;
        bullets[i].oamIndex = 30 + i;
        bullets[i].palRow = 0;
    }

    // Initialize NPCs
    NPC smoker = {463, 192, 20, 32, 1, 3, 10, 0, 4, 1};
    NPC headphones = {273, 192, 16, 32, 2, 4, 10, 0, 4, 1};
    NPC purse = {8, 192, 16, 32, 3, 5, 10, 0, 4, 1};
    NPC armed = {83, 192, 16, 32, 5, 6, 10, 0, 4, 1};
    NPC drummer = {390, 192, 16, 32, 6, 7, 10, 0, 4, 1};
    NPC boy = {197, 192, 16, 32, 7, 8, 10, 0, 4, 1};
    people[0] = smoker;
    people[1] = headphones;
    people[2] = purse;
    people[3] = armed;
    people[4] = drummer;
    people[5] = boy;
}

inline unsigned char colorAt(int x, int y) {
    return ((unsigned char *)cm) [OFFSET(x, y, mapWidth)];
}

int screenX(int x, int width) {
    int screenX = x - hOff0;
    if (screenX > 250 || screenX + width < -1) screenX = 250;
    return screenX;
}

int screenY(int y, int height) {
    int screenY = y - vOff0;
    if (screenY > 170 || screenY + height < -1) screenY = 170;
    return screenY;
}

void setColor() {
    switch(pal) {
    case 0:
        SPRITE_PALETTE[13] = PAL0_JACKET1;             
        SPRITE_PALETTE[5] = PAL0_JACKET2;          
        SPRITE_PALETTE[2] = PAL0_ACCENT;
        break;
    case 1:               
        SPRITE_PALETTE[13] = PAL1_JACKET1;
        SPRITE_PALETTE[5] =  PAL1_JACKET2;
        SPRITE_PALETTE[2] = PAL1_ACCENT;
        break;
    case 2:
        SPRITE_PALETTE[13] = PAL2_JACKET1;
        SPRITE_PALETTE[5] = PAL2_JACKET2;
        SPRITE_PALETTE[2] = PAL2_ACCENT;
        break;
    case 3:
        SPRITE_PALETTE[13] = PAL3_JACKET1;
        SPRITE_PALETTE[5] = PAL3_JACKET2;
        SPRITE_PALETTE[2] = PAL3_ACCENT;
        break;
    }
}

void updatePlumbob() {
    
    if (plumbob.active) {
        plumbob.timeUntilNextFrame--;
        if (!plumbob.timeUntilNextFrame) {
            plumbob.currentFrame = (plumbob.currentFrame + 1) % plumbob.numFrames;
            plumbob.timeUntilNextFrame = 10;
        }
        shadowOAM[plumbob.oamIndex].attr0 = ATTR0_Y(player.y - vOff0 - 20) | ATTR0_TALL;
        shadowOAM[plumbob.oamIndex].attr1 = ATTR1_X(player.x - hOff0 + 14) | ATTR1_TINY;
        shadowOAM[plumbob.oamIndex].attr2 = ATTR2_TILEID(25 + plumbob.currentFrame, 2) | ATTR2_PALROW(plumbob.palRow);
    } else {
        shadowOAM[plumbob.oamIndex].attr0 = ATTR0_HIDE;
    }
}

void updatePlayer() {
    if (player.damageBuffer != 0) player.damageBuffer--;
    player.dealingDamage = 0;
    // collision positions
    int leftX = player.x + 8; // player is in middle of tiles and width is 8
    int rightX = player.x + 8 + 16 - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;

    // MOVEMENT

    // update jumping variables
    if (player.jumpTimer != 0) player.jumpTimer--;
    if (!player.jumpTimer){
        player.jumping = 0;
        player.falling = 1;
    }

    // IDLE
    if (player.direction < 8) {
        player.direction = IDLE_LEFT;
    } else {
        player.direction = IDLE_RIGHT;
    }

    if (BUTTON_HELD(BUTTON_LEFT) && !player.isAttacking) {
        if (player.x > 0 && colorAt(leftX - player.xVel, topY) && colorAt(leftX - player.xVel, bottomY)) {
            player.x -= player.xVel;
        }
        //animation
        player.direction = WALK_LEFT;
    } else if (BUTTON_HELD(BUTTON_RIGHT) && !player.isAttacking) {
        if (player.x < (mapWidth - player.width) && colorAt(rightX + player.xVel, topY) && colorAt(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }
        //animation
        player.direction = WALK_RIGHT;
    }

    // Jumping and fallling logic
    if (BUTTON_PRESSED(BUTTON_UP) && !player.jumping && (!colorAt(leftX, bottomY + player.yVel) || !colorAt(rightX, bottomY + player.yVel))  && !player.isAttacking) {
        // must be standing on something to jump + not currently jumping
        player.jumping = 1;
        player.jumpTimer = 60;
        //animation
        if (player.direction < 8) {
            player.direction = JUMP_LEFT;
        } else {
            player.direction = JUMP_RIGHT;
        }
    } else if (BUTTON_PRESSED(BUTTON_DOWN)) {
        player.jumping = 0;
        player.falling = 1;
    }

    if (player.jumping && player.y > 0) {
        player.y -= player.yVel;
        //animation
        if (player.direction < 8) {
            player.direction = JUMP_LEFT;
        } else {
            player.direction = JUMP_RIGHT;
        }
    } else if (player.falling) {
        //fall if not standing on platform platform underneath
        if (colorAt(leftX, bottomY + player.yVel) && colorAt(rightX, bottomY + player.yVel)) {
            player.y += player.yVel;
            //animation
            if (player.direction < 8) {
                player.direction = JUMP_LEFT;
            } else {
                player.direction = JUMP_RIGHT;
            }
        } else {
            player.falling = 0;
        }
    }

    // PLUMBOB
    // Show plumob in interactable areas
    switch(gameState) {
        case HOUSE:
        plumbobHouse(colorAt(leftX, topY), colorAt(rightX, topY));
        break;
        case SHOPS:
        plumbobShops(colorAt(leftX, topY), colorAt(rightX, topY));
        break;
        case AREA1:
        plumbobArea1(colorAt(leftX, topY), colorAt(rightX, topY));
        break;
        case AREA2:
        plumbobArea2(colorAt(leftX, topY), colorAt(rightX, topY));
        break;
    }
    updatePlumbob();

    // ATTACK LOGIC
    if (BUTTON_PRESSED(BUTTON_A) && !plumbob.active && !player.isAttacking && !player.jumping && !player.falling) {
        player.isAttacking = 1;
        player.currentFrame = 0;
    }

    if (player.isAttacking) {
        if (player.direction < 8) {
            player.direction = ATTACK1_LEFT;
        } else {
            player.direction = ATTACK1_RIGHT;
        }
    }

    // update player frames
    player.timeUntilNextFrame--;
    if (!player.timeUntilNextFrame) {
        player.timeUntilNextFrame = 10;
        // 4 frame and 6 frame sequences
        switch(player.direction) {
            case JUMP_LEFT:
            case JUMP_RIGHT:    
                if (player.currentFrame == 3) {
                    break;
                }
            case IDLE_LEFT:
            case IDLE_RIGHT:
                player.timeUntilNextFrame = 20;
                player.currentFrame = (player.currentFrame + 1) % 4;
            break;

            case ATTACK1_LEFT:
            case ATTACK1_RIGHT:
                player.timeUntilNextFrame = 7;
                player.currentFrame += 1;
                if (player.currentFrame == 6) {
                    player.isAttacking = 0;
                    player.numFrames = 4;
                }
                player.currentFrame--;
                if (player.currentFrame == 4 && player.equippedWeapon.weaponType == GUN) {
                    for(int j = 0; j < 4; j++) {
                        if (!bullets[j].active) {
                            playSoundB(shoot_data, shoot_length, 0);
                            bullets[j].active = 1;
                            if (player.direction < 8) {
                                bullets[j].x = player.x;
                                bullets[j].y = player.y + 8;
                                bullets[j].xVel = -2;
                            } else {
                                bullets[j].x = player.x + 26;
                                bullets[j].y = player.y + 8;
                                bullets[j].xVel = 2;
                            }
                            break;
                        }
                    }
                }
            case WALK_LEFT:
            case WALK_RIGHT:
                player.currentFrame = (player.currentFrame + 1) % 6;
            break;
        }
        // deal damage when it reaches the 2nd to last frame of attacking
        if (player.isAttacking) {
            if (player.currentFrame == 4) {
                player.dealingDamage = 1;
            } 
        }
    }

    // Center screen on player
    hOff0 = player.x - (SCREENWIDTH - player.width) / 2;
    vOff0 = player.y - (SCREENHEIGHT - player.height) / 2;
    if (hOff0 < 0) hOff0 = 0;
    if (vOff0 < 0) vOff0 = 0;
    if (gameState == HOUSE) {
        if (hOff0 > mapWidth - SCREENWIDTH - 64) hOff0 =  mapWidth - SCREENWIDTH - 64;
        if (vOff0 > mapHeight - SCREENHEIGHT - 96) vOff0 = mapHeight - SCREENHEIGHT - 96;
    } else {
        if (hOff0 > mapWidth - SCREENWIDTH) hOff0 =  mapWidth - SCREENWIDTH;
        if (vOff0 > mapHeight - SCREENHEIGHT) vOff0 = mapHeight - SCREENHEIGHT;
    }
    
    if (gameState == SHOPS) {
        hOff1 = hOff0;
        vOff1 = vOff0;
    } else if (gameState == AREA1) {
        hOff1 = hOff0;
        vOff1 = vOff0;
        vOff2 = vOff0;
    } else if (gameState == AREA2) {
        vOff1 = vOff0;
    } else if (gameState == FINAL) {
        if (phase1) {
            hOff0 = 9;
            vOff0 = 96;
        } else if (phase2) {
            hOff0 = 272;
            vOff0 = 96;
        } else {
            if (hOff0 < 9) hOff0 = 9;
        }
    }

    // Update ShadowOAM
    // Player
    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y - vOff0) | ATTR0_SQUARE;
    shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x - hOff0) | ATTR1_MEDIUM;
    if (player.damageBuffer != 0) {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(20, 8);
        
    } else {
        // Weapon
        switch(player.direction) {
        case IDLE_LEFT:
        case IDLE_RIGHT:
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID((4 * player.currentFrame > 12 ? 12: 4 * player.currentFrame), 0);
        break;

        case WALK_LEFT:
        case WALK_RIGHT:
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(4 * player.currentFrame, 4);
        break;

        case JUMP_LEFT:
        case JUMP_RIGHT:
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID((4 * player.currentFrame > 12 ? 12: 4 * player.currentFrame), 8);
        break;

        case ATTACK1_LEFT:
        case ATTACK1_RIGHT:
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(4 * player.currentFrame, 12);
        // Show weapon
        player.equippedWeapon.y = player.y + 11;
        player.equippedWeapon.x = player.x + 20;
        int flip = 0;
        if (player.direction < 8) {
            player.equippedWeapon.x = player.x + 5;
            flip = 1;
        }
        if (player.equippedWeapon.weaponType != NONE && player.equippedWeapon.weaponType != GUN) {
            shadowOAM[player.equippedWeapon.oamIndex].attr2 = ATTR2_TILEID(20 + 2 * player.currentFrame, player.equippedWeapon.weaponType - 1);
            switch (player.currentFrame) { // Weapon positioning
                case 0:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ATTR0_Y(player.y - vOff0 + 18) | ATTR0_WIDE;
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ATTR1_X(player.x - hOff0 + (flip ? 4 : 13)) | ATTR1_TINY;
                    player.equippedWeapon.y = player.y + 18;
                    player.equippedWeapon.x = player.x + (flip ? 4 : 13);
                    break;
                case 1:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ATTR0_Y(player.y - vOff0 + 18) | ATTR0_WIDE;
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ATTR1_X(player.x - hOff0 + (flip ? 4 : 12)) | ATTR1_TINY;
                    player.equippedWeapon.y = player.y + 18;
                    player.equippedWeapon.x = player.x + (flip ? 4 : 12);
                    break;
                case 2:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ATTR0_Y(player.y - vOff0 + 14 - flip) | ATTR0_WIDE;
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ATTR1_X(player.x - hOff0 + (flip ? 5 : 12)) | ATTR1_TINY;
                    player.equippedWeapon.y = player.y + 14 - flip;
                    player.equippedWeapon.x = player.x + (flip ? 5 : 12);
                    break;
                case 3:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ATTR0_Y(player.y - vOff0 + 11) | ATTR0_WIDE;
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ATTR1_X(player.x - hOff0 + (flip ? -6 : 22)) | ATTR1_TINY;
                    player.equippedWeapon.y = player.y + 11;
                    player.equippedWeapon.x = player.x + (flip ? -6 : 22);
                    break;
                case 4:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ATTR0_Y(player.y - vOff0 + 9 + flip) | ATTR0_WIDE;
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ATTR1_X(player.x - hOff0 + (flip ? -8 : 24)) | ATTR1_TINY;
                    player.equippedWeapon.y = player.y + 9 + flip;
                    player.equippedWeapon.x = player.x + (flip ? -8 : 24);
                    break;
                case 5:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ATTR0_Y(player.y - vOff0 + 13 + flip) | ATTR0_WIDE;
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ATTR1_X(player.x - hOff0 + (flip ? -4 : 20)) | ATTR1_TINY;
                    player.equippedWeapon.y = player.y + 13 + flip;
                    player.equippedWeapon.x = player.x + (flip ? -4 : 20);
                    break;
            }       
        } else if (player.equippedWeapon.weaponType == GUN) {
            if (player.currentFrame == 4) {
                shadowOAM[player.equippedWeapon.oamIndex].attr0 = ATTR0_Y(player.y - vOff0 + 5 + flip) | ATTR0_WIDE;
                shadowOAM[player.equippedWeapon.oamIndex].attr1 = ATTR1_X(player.x - hOff0 + (flip ? 5 : 14)) | ATTR1_TINY;
                shadowOAM[player.equippedWeapon.oamIndex].attr2 = ATTR2_TILEID(22, 2);
            }
        }
        break;
        }
    }
    if (player.direction < 8) {
        shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
        shadowOAM[player.equippedWeapon.oamIndex].attr1 |= ATTR1_HFLIP;
    }
    
    // Update bullets
    updateGun();
}

void draw() {
    waitForVBlank();
    // Update hOff and vOff registers

    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;

    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;
    // Transfer updates from ShadowOAM
    DMANow(3, shadowOAM, OAM, 512);
}

void updateGun() {
    for(int i = 0; i < 4; i++) {
        if (!bullets[i].active) {
            shadowOAM[bullets[i].oamIndex].attr0 = ATTR0_HIDE;
            continue;
        }
        if (screenY(bullets[i].y, bullets[i].height) == 170 || screenX(bullets[i].x, bullets[i].width) == 250) {
            bullets[i].active = 0;
        }
        bullets[i].x += bullets[i].xVel;
        shadowOAM[bullets[i].oamIndex].attr0 = ATTR0_Y(screenY(bullets[i].y, bullets[i].height)) | ATTR0_SQUARE;
        shadowOAM[bullets[i].oamIndex].attr1 = ATTR1_X(screenX(bullets[i].x, bullets[i].width)) | ATTR1_TINY;
        shadowOAM[bullets[i].oamIndex].attr2 = ATTR2_TILEID(21, 2) | ATTR2_PALROW(bullets[i].palRow);
    }
}

void updateText() {
    //scrolling
    if (ltext == CAT) {
        if (BUTTON_HELD(BUTTON_UP) && vOff0 > 0) {
            vOff0--;
        } else if (BUTTON_HELD(BUTTON_DOWN) && vOff0 < 110) {
            vOff0++;
        }
        draw();
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        switch(ltext) {
        case A:
            people[0].talk = 1;
            people[0].num = 1;
            goToGame();
        break;
        case B:
            if (inventory.credits >= 175) {
                inventory.credits -= 175;
                ltext = COMPLETED;
                for(int i = 0; i < 22; i++) {
                    if (!allItems[i].collected) {
                        allItems[i].collected = 1;
                        allItems[i].itemType = DEFENSE_POTION;
                        break;
                    }
                }
                for(int i = 0; i < 22; i++) {
                    if (!allItems[i].collected) {
                        allItems[i].collected = 1;
                        allItems[i].itemType = DAMAGE_POTION;
                        break;
                    }
                }
                people[5].objectiveCompleted = 1;
                goToText();
            }
        break;
        case C:
            goToGame();
        break;
        case D:
            people[4].talk = 1;
            people[4].num = 2;
            goToGame();
        break;
        case E:
            people[2].talk = 1;
            people[2].num = 1;
            goToGame();
        break;
        case F:
            people[3].talk = 1;
            goToGame();
        break;
        case CAT:
            goToGame();
        break;
        case MAP:
            goToGame();
        break;
        case COMPLETED:
            goToGame();
        break;
        }
    } else if (BUTTON_PRESSED(BUTTON_B)) {
        goToGame();
    }
}


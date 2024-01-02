#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "game.h"
#include "backgrounds.h"
#include "spritesheets.h"
#include "music.h"
#include "hello2.h"
#include "hey1.h"
#include "hey2.h"
#include "hi2.h"

// ShadowOAM
OBJ_ATTR shadowOAM[128];

// Button register
extern unsigned short oldButtons;
extern unsigned short buttons;

// States
extern enum STATE {SPLASH, INSTRUCTIONS, PAUSE, OPEN_INVENTORY, STORE, GAME, LOSE, WIN, TEXT} state;
extern enum GAME_STATE {START, HOUSE, SHOPS, AREA1, AREA2} gameState;
extern enum MENU_BUTTONS {PLAY, INSTRUCTS, CONTINUE, MAIN, PARK, POWER_STATION} menuButton;
extern enum LAUNCH_TEXT {A, B, C, D, E, F, CAT, MAP, COMPLETED} ltext;

// PLAYER
PLAYER player;
// marker
SPRITE plumbob;
// color scheme
extern int pal;

// Collision map
extern void* cm;

// Screen Variables
extern int hOff0;
extern int vOff0;

// COLLECTIBLES
WEAPON allWeapons[4];
ITEM allItems[22];

// INVENTORY
INVENTORY inventory;

// People
NPC people[6];

// Billboard
int ad;
int adTimer;

// switch states
int toHouse;
int toAreas;
int toStore;
int toText;

void initShops() {
    //set collision map
    cm = shopscmBitmap;
    toText = 0;
    if (pal != 0) {
        setColor();
    }
    // set player positions
    player.y = 196;
    if (gameState == AREA1 || gameState == AREA2) {
        player.x = 44;
    } else if (state != PAUSE && state != OPEN_INVENTORY && state != STORE && state != TEXT) {
        player.x = 312;
    } 
    // set player variables
    player.jumping = 0;
    player.falling = 0;
    player.isAttacking = 0;
    player.dealingDamage = 0;
    player.damageBuffer = 0;

    adTimer = 200;
    ad = 0;

    toHouse = 0;
    toAreas = 0;
    toStore = 0;
}

void updateShops() {
    if (toAreas) {
        updateNPC();
        updateAds();
        updateMoveMaps();
    } else {
        toStore = 0;
        plumbob.active = 0;
        updateNPC();
        updatePlayer();
        shadowOAM[player.oamIndex].attr2 |= ATTR2_PRIORITY(1);
        updateAds();
        // Cheat: press A and B on trash bag to gain gun and infinite money
        if (player.x > 230 && player.x < 250 && BUTTON_PRESSED(BUTTON_A) && BUTTON_PRESSED(BUTTON_B)) {
            allWeapons[GUN].collected = 1;
        }
        

        if (toHouse) {
            goToHouse();
        } else if (toText) {
            goToText();
        } else if (toStore) {
            goToStore();
        } else {
            draw();
        }
    }
    
   
}

void updateMoveMaps() {
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        menuButton = POWER_STATION;
    } else if (BUTTON_PRESSED(BUTTON_RIGHT) && inventory.area2Map) {
        menuButton = PARK;
        
    } else if (BUTTON_PRESSED(BUTTON_A)) {
        if (menuButton == PARK) {
            goToArea2();
        } else {
            goToArea1();
        }
    } else if (BUTTON_PRESSED(BUTTON_B)) {
        toAreas = 0;
    }
    if (menuButton == PARK) {
        shadowOAM[plumbob.oamIndex].attr0 = ATTR0_Y(player.y - vOff0 - 20) | ATTR0_WIDE;
        shadowOAM[plumbob.oamIndex].attr1 = ATTR1_X(player.x - hOff0 - 6) | ATTR1_SMALL;
        shadowOAM[plumbob.oamIndex].attr2 = ATTR2_TILEID(24, 7);
    } else {
        shadowOAM[plumbob.oamIndex].attr0 = ATTR0_Y(player.y - vOff0 - 20) | ATTR0_WIDE;
        shadowOAM[plumbob.oamIndex].attr1 = ATTR1_X(player.x - hOff0 - 7) | ATTR1_LARGE;
        shadowOAM[plumbob.oamIndex].attr2 = ATTR2_TILEID(24, 8);
    }
    draw();
}

void plumbobShops(int left, int right) {
    // Show plumob in interactable areas
    if (left == 1 || right == 1) { // house
        plumbob.active = 1;
        plumbob.palRow = 8;
        if (BUTTON_PRESSED(BUTTON_A)) {
            toHouse = 1;
        }
    } else if (left == 2 || right == 2) { // store
        plumbob.active = 1;
        plumbob.palRow = 8;
        if (BUTTON_PRESSED(BUTTON_A)) {
            toStore = 1;
        }
    } else if (left == 3 || right == 3) { // bus stop
        plumbob.active = 1;
        plumbob.palRow = 8;
        if (BUTTON_PRESSED(BUTTON_A)) {
            toAreas = 1;
            menuButton = POWER_STATION;
        }
    }
}

void updateNPC() {
    for (int i = 0; i < 6; i++) {
        if (!people[i].active) continue;
        // Show plumbob if colliding with player
        if (collision(player.x + 8, player.y, 16, player.height, people[i].x, people[i].y, people[i].width, people[i].height)) {
            if (!people[i].objectiveCompleted) {
                plumbob.active = 1;
                plumbob.palRow = 9;
                if (BUTTON_PRESSED(BUTTON_A)) {
                    if (i == 1) {
                        playSoundB(hello1_data, hello1_length, 0);
                        ltext = C;
                        toText = 1;
                    } else if (i == 2) {
                        playSoundB(hey1_data, hey1_length, 0);
                        if (people[i].talk && !people[i].num) {
                            inventory.credits += 500;
                            people[i].objectiveCompleted = 1;
                            ltext = COMPLETED;
                        } else {
                            ltext = E;
                        }
                        toText = 1;
                    } else if (i == 3) {
                        playSoundB(hello2_data, hello2_length, 0);
                        if (people[i].talk && (allWeapons[1].collected || allWeapons[2].collected || allWeapons[3].collected)) {
                            player.baseDamage += 1;
                            people[i].objectiveCompleted = 1;
                            ltext = COMPLETED;
                        } else {
                            ltext = F;
                        }
                        toText = 1;
                    } else if (i == 4) {
                        if (people[i].talk && !people[i].num) {
                            inventory.credits += 500;
                            for(int i = 0; i < 22; i++) {
                                if (!allItems[i].collected) {
                                    allItems[i].collected = 1;
                                    allItems[i].itemType = HEALTH_POTION;
                                    break;
                                }
                            }
                            people[i].objectiveCompleted = 1;
                            ltext = COMPLETED;
                        } else {
                            ltext = D;
                        }
                        toText = 1;
                    } else if (i == 5) {
                        playSoundB(hey2_data, hey2_length, 0);
                        ltext = B;
                        toText = 1;
                    } else {//0
                        playSoundB(hi2_data, hi2_length, 0);
                        if (people[i].talk && !people[i].num) {
                            inventory.credits += 150;
                            for(int i = 0; i < 22; i++) {
                                if (!allItems[i].collected) {
                                    allItems[i].collected = 1;
                                    allItems[i].itemType = CAKE;
                                    break;
                                }
                            }
                            for(int i = 0; i < 22; i++) {
                                if (!allItems[i].collected) {
                                    allItems[i].collected = 1;
                                    allItems[i].itemType = PANCAKE;
                                    break;
                                }
                            }
                            for(int i = 0; i < 22; i++) {
                                if (!allItems[i].collected) {
                                    allItems[i].collected = 1;
                                    allItems[i].itemType = BURGER;
                                    break;
                                }
                            }
                            people[i].objectiveCompleted = 1;
                            ltext = COMPLETED;
                        } else {
                            ltext = A;
                        }
                        toText = 1;
                    } 
                }
            }    
        }
        // Animation loop
        people[i].timeUntilNextFrame--;
        if (people[i].timeUntilNextFrame == 0) {
            people[i].timeUntilNextFrame = 15;
            people[i].currentFrame = (people[i].currentFrame + 1) % people[i].numFrames;
        }
        // Update ShadowOAM
        shadowOAM[people[i].oamIndex].attr0 = ATTR0_Y(screenY(people[i].y)) | ATTR0_TALL;
        shadowOAM[people[i].oamIndex].attr1 = ATTR1_X(screenX(people[i].x)) | ATTR1_MEDIUM;
        switch(i) {
            case 0: //smoker
                shadowOAM[people[i].oamIndex].attr0 = ATTR0_Y(screenY(people[i].y)) | ATTR0_SQUARE;
                shadowOAM[people[i].oamIndex].attr1 = ATTR1_X(screenX(people[i].x)) | ATTR1_MEDIUM | ATTR1_HFLIP;
                shadowOAM[people[i].oamIndex].attr2 = ATTR2_TILEID(4 * people[i].currentFrame, 24)| ATTR2_PRIORITY(1) | ATTR2_PALROW(people[i].palRow);
                break;
            case 1: //headphones
                shadowOAM[people[i].oamIndex].attr2 = ATTR2_TILEID(2 * people[i].currentFrame + 16, 24)| ATTR2_PRIORITY(1) | ATTR2_PALROW(people[i].palRow);
                if (player.x < people[i].x) shadowOAM[people[i].oamIndex].attr1 |= ATTR1_HFLIP;
                break;
            case 2: //purse
                shadowOAM[people[i].oamIndex].attr2 = ATTR2_TILEID(2 * people[i].currentFrame + 24, 24) | ATTR2_PRIORITY(1) | ATTR2_PALROW(people[i].palRow);
                break;
            case 3: //armed
                shadowOAM[people[i].oamIndex].attr2 = ATTR2_TILEID(2 * people[i].currentFrame + 24, 28)| ATTR2_PRIORITY(1) | ATTR2_PALROW(people[i].palRow);
                break;
            case 4: //drummer
                shadowOAM[people[i].oamIndex].attr0 = ATTR0_Y(screenY(people[i].y)) | ATTR0_SQUARE;
                shadowOAM[people[i].oamIndex].attr1 = ATTR1_X(screenX(people[i].x)) | ATTR1_MEDIUM;
                shadowOAM[people[i].oamIndex].attr2 = ATTR2_TILEID(4 * people[i].currentFrame, 28)| ATTR2_PRIORITY(1) | ATTR2_PALROW(people[i].palRow);
                shadowOAM[people[i].oamIndex].attr1 |= ATTR1_HFLIP;
                break;
            case 5: //boy
                shadowOAM[people[i].oamIndex].attr1 |= ATTR1_HFLIP;
                shadowOAM[people[i].oamIndex].attr2 = ATTR2_TILEID(2 * people[i].currentFrame + 16, 28)| ATTR2_PRIORITY(1) | ATTR2_PALROW(people[i].palRow);
                break;
        }
    }
    
}

void updateAds() {
    adTimer--;
    if (!adTimer) {
        adTimer = 200;
        ad = (ad + 1) % 3;
        setTile(28, 11, 450 + 3 * ad, 18);
        setTile(29, 11, 451 + 3 * ad, 18);
        setTile(30, 11, 452 + 3 * ad, 18);

        setTile(28, 12, 475 + 3 * ad, 18);
        setTile(29, 12, 476 + 3 * ad, 18);
        setTile(30, 12, 477 + 3 * ad, 18);

        setTile(28, 13, 500 + 3 * ad, 18);
        setTile(29, 13, 501 + 3 * ad, 18);
        setTile(30, 13, 502 + 3 * ad, 18);

        setTile(28, 14, 525 + 3 * ad, 18);
        setTile(29, 14, 526 + 3 * ad, 18);
        setTile(30, 14, 527 + 3 * ad, 18);

        setTile(28, 15, 550 + 3 * ad, 18);
        setTile(29, 15, 551 + 3 * ad, 18);
        setTile(30, 15, 552 + 3 * ad, 18);
    }
}
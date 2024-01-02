#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "digitalSound.h"
#include "game.h"
#include "backgrounds.h"
#include "spritesheets.h"

#include "music.h"
#include "pinkBloom.h"
#include "theHiddenOne.h"
#include "toTheUnknown.h"
#include "valleyofSpirits.h"
#include "openInventory.h"


// State and button enums + variables
enum STATE {SPLASH, INSTRUCTIONS, PAUSE, OPEN_INVENTORY, STORE, GAME, LOSE, WIN, TEXT} state;
enum GAME_STATE {START, HOUSE, SHOPS, AREA1, AREA2, FINAL} gameState;
enum MENU_BUTTONS {PLAY, INSTRUCTS, CONTINUE, MAIN, PARK, POWER_STATION} menuButton;
enum LAUNCH_TEXT {A, B, C, D, E, F, CAT, MAP, COMPLETED} ltext;
int switchingStates;

// ShadowOAM
OBJ_ATTR shadowOAM[128];

// Button Register
unsigned short oldButtons;
unsigned short buttons;

// Screen variables
int hOff0;
int vOff0;
int hOff1;
int vOff1;
int hOff2;
int vOff2;
int mapWidth;
int mapHeight;

// State trackers
int fromPause;
int fromStart;

// Cutscene variables
int x;
int y;
int currentFrame;
int timeUntilNextFrame;
int numFrames;

int main() {
    initialize();

    while(1) {
        // Update buttons
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch(state) {
            case SPLASH:
                if (BUTTON_PRESSED(BUTTON_SELECT) || BUTTON_PRESSED(BUTTON_START)) {
                    if (menuButton == PLAY) {
                        goToGame();
                    } else {
                        fromPause = 0;
                        fromStart = 1;
                        goToInstructions();
                    }
                } else {
                    splash();
                }
                break;
            case INSTRUCTIONS:
                if (BUTTON_PRESSED(BUTTON_SELECT) || BUTTON_PRESSED(BUTTON_START)) {
                    if (fromPause) {
                        goToPause();
                    } else {
                        goToSplash();
                    }
                }
                break;
            case PAUSE:
                if (BUTTON_PRESSED(BUTTON_SELECT) || BUTTON_PRESSED(BUTTON_START)) {
                    switchingStates = 1;
                }
                pause();
                break;
            case OPEN_INVENTORY:
                if (BUTTON_PRESSED(BUTTON_RSHOULDER)) {
                    goToGame();
                } else {
                    updateInventory();
                }
                break;
            case STORE:
                updateStore();
                break;
            case GAME:
                if (BUTTON_PRESSED(BUTTON_RSHOULDER)) {
                    goToInventory();
                } else if (BUTTON_PRESSED(BUTTON_START)) {
                    goToPause();
                } else {
                    goToGame();
                }
                break;
            case TEXT:
                updateText();
                break;
            case LOSE:
            case WIN:
                if (BUTTON_PRESSED(BUTTON_START)) goToSplash();
                break;
        }
    }
}

void initialize() {
    // Enable registers and background
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    mgba_open();

    // Button register
    oldButtons = 0;
    buttons = REG_BUTTONS;

    // Free roam
    x = 0;
    y = 0;

    // Global Variables
    switchingStates = 0;

    // Enable sound
    setupSounds();

    initGame();
    gameState = START;
    goToPause();
    pause();
    goToSplash();
}


// MAIN STATES

// Splash
void goToSplash() {
    // Update Background size
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    // Load tileset + pal + tilemap
    DMANow(3, splashTiles, &CHARBLOCK[0], splashTilesLen/2);
    DMANow(3, splashPal, BG_PALETTE, splashPalLen/2);
    DMANow(3, splashMap, &SCREENBLOCK[28], splashMapLen/2);

    // Load in spritesheet
    DMANow(3, interfaceSSPal, SPRITE_PALETTE, interfaceSSPalLen/2);
    DMANow(3, interfaceSSTiles, &CHARBLOCK[4], interfaceSSTilesLen/2);
    // Remove sprites
    hideSprites();

    // Center screen
    hOff0 = 0;
    vOff0 = 0;
    mapWidth = SPLASH_WIDTH * 8;
    mapHeight = SPLASH_HEIGHT * 8;

    // Default menu button and extras
    menuButton = PLAY;
    // Text
    shadowOAM[0].attr0 = ATTR0_Y(56) | ATTR0_WIDE;
    shadowOAM[0].attr1 = ATTR1_X(49) | ATTR1_TINY;
    shadowOAM[0].attr2 = ATTR2_TILEID(1, 1);

    // Indicator
    shadowOAM[1].attr0 = ATTR0_Y(56) | ATTR0_SQUARE;
    shadowOAM[1].attr1 = ATTR1_X(70) | ATTR1_TINY;
    shadowOAM[1].attr2 = ATTR2_TILEID(1, 0);

    draw();

    // Sound
    if (state != INSTRUCTIONS) {
        playSoundA(valleyofSpirits_data, valleyofSpirits_length, 1);
    }

    // Update state
    state = SPLASH;
}
void splash() {
    if (BUTTON_PRESSED(BUTTON_UP) || BUTTON_PRESSED(BUTTON_DOWN)) {
        if (menuButton == PLAY) {
            menuButton = INSTRUCTS;
        } else {
            menuButton = PLAY;
        }
    }

    if (menuButton == PLAY) {
        // Text
        shadowOAM[0].attr0 = ATTR0_Y(56) | ATTR0_WIDE;
        shadowOAM[0].attr1 = ATTR1_X(49) | ATTR1_TINY;
        shadowOAM[0].attr2 = ATTR2_TILEID(1, 1);

        // Indicator
        shadowOAM[1].attr0 = ATTR0_Y(56) | ATTR0_SQUARE;
        shadowOAM[1].attr1 = ATTR1_X(70) | ATTR1_TINY;
        shadowOAM[1].attr2 = ATTR2_TILEID(1, 0);
    } else if (menuButton == INSTRUCTS) {
        // Text
        shadowOAM[0].attr0 = ATTR0_Y(80) | ATTR0_WIDE;
        shadowOAM[0].attr1 = ATTR1_X(49) | ATTR1_LARGE;
        shadowOAM[0].attr2 = ATTR2_TILEID(1, 2);

        // Indicator
        shadowOAM[1].attr0 = ATTR0_Y(80) | ATTR0_SQUARE;
        shadowOAM[1].attr1 = ATTR1_X(106) | ATTR1_TINY;
        shadowOAM[1].attr2 = ATTR2_TILEID(1, 0);
    }
    draw();
    
}

// Instructions
void goToInstructions() {
    // Update Background size
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    // Load tileset + pal + tilemap
    DMANow(3, instructionsAndPauseTiles, &CHARBLOCK[0], instructionsAndPauseTilesLen/2);
    DMANow(3, instructionsAndPausePal, BG_PALETTE, instructionsAndPausePalLen/2);
    DMANow(3, instructionsMap, &SCREENBLOCK[28], instructionsMapLen/2);
    // Load in spritesheet
    DMANow(3, interfaceSSPal, SPRITE_PALETTE, interfaceSSPalLen/2);
    DMANow(3, interfaceSSTiles, &CHARBLOCK[4], interfaceSSTilesLen/2);
    // Center screen
    hOff0 = 0;
    vOff0 = 0;
    mapWidth = INSTRUCTIONS_WIDTH * 8;
    mapHeight = INSTRUCTIONS_HEIGHT * 8;
    // Remove all sprites
    hideSprites();
    // Update registers and sprites
    draw();

    // Update state
    state = INSTRUCTIONS;
}

// Pause
void goToPause() {
    // Update Background size
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(27) | BG_SIZE_SMALL | BG_4BPP;
    // Load tileset + pal + tilemap
    DMANow(3, instructionsAndPauseTiles, &CHARBLOCK[0], instructionsAndPauseTilesLen/2);
    DMANow(3, instructionsAndPausePal, BG_PALETTE, instructionsAndPausePalLen/2);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen/2); //BG0
    DMANow(3, skyMap, &SCREENBLOCK[27], skyMapLen/2); //BG1
    // Load in spritesheet
    DMANow(3, interfaceSSPal, SPRITE_PALETTE, interfaceSSPalLen/2);
    DMANow(3, interfaceSSTiles, &CHARBLOCK[4], interfaceSSTilesLen/2);
    // Remove sprites
    hideSprites();

    // Center screen on player
    x = 8;
    y = 216;
    currentFrame = 0;
    numFrames = 6;
    timeUntilNextFrame = 10;
    hOff0 = x - (SCREENWIDTH - 16) / 2;
    vOff0 = 96;
    hOff1 = 0;
    vOff1 = 0;
    mapWidth = PAUSE_WIDTH * 8;
    mapHeight = PAUSE_HEIGHT * 8;

    // Runner
    shadowOAM[0].attr0 = ATTR0_Y(y - vOff0) | ATTR0_TALL;
    shadowOAM[0].attr1 = ATTR1_X(x) | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_TILEID(0, 6);

    // Continue button
    shadowOAM[2].attr0 = ATTR0_Y(8) | ATTR0_WIDE;
    shadowOAM[2].attr1 = ATTR1_X(3) | ATTR1_LARGE;
    shadowOAM[2].attr2 = ATTR2_TILEID(17, 2);

    // Splash button
    shadowOAM[3].attr0 = ATTR0_Y(19) | ATTR0_WIDE;
    shadowOAM[3].attr1 = ATTR1_X(3) | ATTR1_SMALL;
    shadowOAM[3].attr2 = ATTR2_TILEID(3, 1);

    // Instructions button
    shadowOAM[4].attr0 = ATTR0_Y(30) | ATTR0_WIDE;
    shadowOAM[4].attr1 = ATTR1_X(3) | ATTR1_LARGE;
    shadowOAM[4].attr2 = ATTR2_TILEID(1, 2);

    // Indicator
    shadowOAM[5].attr0 = ATTR0_Y(8) | ATTR0_SQUARE;
    shadowOAM[5].attr1 = ATTR1_X(43) | ATTR1_TINY;
    shadowOAM[5].attr2 = ATTR2_TILEID(2, 0); //36, 19 - 63, 30

    // Update registers and sprites
    draw();

    // Music
    pauseSounds();

    // Update state
    state = PAUSE;
    menuButton = CONTINUE;
}
void pause() {
    if (!switchingStates) {
        if (menuButton == CONTINUE) {
            // Menu button
            shadowOAM[1].attr0 = ATTR0_Y(8) | ATTR0_WIDE;
            shadowOAM[1].attr1 = ATTR1_X(3) | ATTR1_LARGE;
            shadowOAM[1].attr2 = ATTR2_TILEID(9, 2);
            // Indicator
            shadowOAM[5].attr0 = ATTR0_Y(8) | ATTR0_SQUARE;
            shadowOAM[5].attr1 = ATTR1_X(45) | ATTR1_TINY;
            shadowOAM[5].attr2 = ATTR2_TILEID(2, 0);
            if (BUTTON_PRESSED(BUTTON_UP)) {
                menuButton = INSTRUCTS;   
            } else if (BUTTON_PRESSED(BUTTON_DOWN)) {
                menuButton = MAIN;
            }
        } else if (menuButton == MAIN) {
            // Menu button
            shadowOAM[1].attr0 = ATTR0_Y(19) | ATTR0_WIDE;
            shadowOAM[1].attr1 = ATTR1_X(3) | ATTR1_SMALL;
            shadowOAM[1].attr2 = ATTR2_TILEID(7, 1);
            // Indicator
            shadowOAM[5].attr0 = ATTR0_Y(19) | ATTR0_SQUARE;
            shadowOAM[5].attr1 = ATTR1_X(38) | ATTR1_TINY;
            shadowOAM[5].attr2 = ATTR2_TILEID(2, 0);
            if (BUTTON_PRESSED(BUTTON_UP)) {
                menuButton = CONTINUE;
            } else if (BUTTON_PRESSED(BUTTON_DOWN)) {
                menuButton = INSTRUCTS;
            }
        } else if (menuButton == INSTRUCTS) {
            // Menu button
            shadowOAM[1].attr0 = ATTR0_Y(30) | ATTR0_WIDE;
            shadowOAM[1].attr1 = ATTR1_X(3) | ATTR1_LARGE;
            shadowOAM[1].attr2 = ATTR2_TILEID(25, 2);
            // Indicator
            shadowOAM[5].attr0 = ATTR0_Y(30) | ATTR0_SQUARE;
            shadowOAM[5].attr1 = ATTR1_X(63) | ATTR1_TINY;
            shadowOAM[5].attr2 = ATTR2_TILEID(2, 0);
            if (BUTTON_PRESSED(BUTTON_UP)) {
                menuButton = MAIN;
            } else if (BUTTON_PRESSED(BUTTON_DOWN)) {
                menuButton = CONTINUE;
            }
        }
        // Center screen on person
        x += 2;
        hOff0 = x - (SCREENWIDTH - 16) / 2;
        hOff1++;
        timeUntilNextFrame--;
        if (timeUntilNextFrame == 0) {
            currentFrame = (currentFrame + 1) % numFrames;
            timeUntilNextFrame = 10;
        }
        // Runner
        shadowOAM[0].attr0 = ATTR0_Y(y - vOff0) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = ATTR1_X(x - hOff0) | ATTR1_MEDIUM;
        shadowOAM[0].attr2 = ATTR2_TILEID(currentFrame * 4, 6);
        draw();
    } else {
        x += 2;
        if (x - hOff0 > SCREENWIDTH) {
            switchingStates = 0;
            if (menuButton == CONTINUE) {
                goToGame();
            } else if (menuButton == MAIN) {
                goToSplash();
            } else {
                fromPause = 1;
                fromStart = 0;
                goToInstructions();
            }
        } else {
            timeUntilNextFrame--;
            if (timeUntilNextFrame == 0) {
                currentFrame = (currentFrame + 1) % numFrames;
                timeUntilNextFrame = 10;
            }
            // Runner
            shadowOAM[0].attr0 = ATTR0_Y(y - vOff0) | ATTR0_SQUARE;
            shadowOAM[0].attr1 = ATTR1_X(x - hOff0) | ATTR1_MEDIUM;
            shadowOAM[0].attr2 = ATTR2_TILEID(currentFrame * 4, 6);
            draw();
        }
    }
}

// Inventory
void goToInventory() {
    // Update Background size
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    // Load tileset + pal + tilemap
    DMANow(3, inventoryTiles, &CHARBLOCK[0], inventoryTilesLen/2);
    DMANow(3, inventoryPal, BG_PALETTE, inventoryPalLen/2);
    DMANow(3, inventoryMap, &SCREENBLOCK[28], inventoryMapLen/2);
    // Load in spritesheet
    DMANow(3, interfaceSSPal, SPRITE_PALETTE, interfaceSSPalLen/2);
    DMANow(3, interfaceSSTiles, &CHARBLOCK[4], interfaceSSTilesLen/2);
    // Center screen
    hOff0 = 0;
    vOff0 = 0;
    mapWidth = INVENTORY_WIDTH * 8;
    mapHeight = INVENTORY_HEIGHT * 8;
    // Remove all sprites
    hideSprites();
    // Initialize sprites
    initInventory();
    // Play sound
    playSoundB(openInventory_data, openInventory_length, 0);
    // Update registers and sprites
    draw();

    // Update state
    state = OPEN_INVENTORY;
}

// Store
void goToStore() {
    // Update Background size
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    // Load tileset + pal + tilemap
    DMANow(3, inventoryTiles, &CHARBLOCK[0], inventoryTilesLen/2);
    DMANow(3, inventoryPal, BG_PALETTE, inventoryPalLen/2);
    DMANow(3, storeMap, &SCREENBLOCK[28], storeMapLen/2);
    // Load in spritesheet
    DMANow(3, interfaceSSPal, SPRITE_PALETTE, interfaceSSPalLen/2);
    DMANow(3, interfaceSSTiles, &CHARBLOCK[4], interfaceSSTilesLen/2);
    // Center screen
    hOff0 = 0;
    vOff0 = 0;
    mapWidth = STORE_WIDTH * 8;
    mapHeight = STORE_HEIGHT * 8;
    // Remove all sprites
    hideSprites();
    // Initialize sprites
    initStore();
    // Play sound
    playSoundB(openInventory_data, openInventory_length, 0);
    // Update registers and sprites
    draw();

    // Update state
    state = STORE;
}

// Win
void goToWin() {
    // Update Background size
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    // Load tileset + pal + tilemap
    DMANow(3, textTiles, &CHARBLOCK[0], textTilesLen/2);
    DMANow(3, textPal, BG_PALETTE, textPalLen/2);
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen/2);
    // Center screen
    hOff0 = 0;
    vOff0 = 0;
    mapWidth = WIN_WIDTH * 8;
    mapHeight = WIN_HEIGHT * 8;
    // Remove all sprites
    hideSprites();
    initGame(); //reset game
    // Update registers and sprites
    draw();
    // Update state
    state = WIN;
    gameState = HOUSE;
}

// Lose
void goToLose() {
    // Update Background size
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    // Load tileset + pal + tilemap
    DMANow(3, textTiles, &CHARBLOCK[0], textTilesLen/2);
    DMANow(3, textPal, BG_PALETTE, textPalLen/2);
    DMANow(3, loseMap, &SCREENBLOCK[28], loseMapLen/2);
    // Center screen
    hOff0 = 0;
    vOff0 = 0;
    mapWidth = LOSE_WIDTH * 8;
    mapHeight = LOSE_HEIGHT * 8;
    // Remove all sprites
    hideSprites();
    // Update registers and sprites
    draw();

    // Update state
    state = LOSE;
    gameState = SHOPS;
}

void goToText() {
    // Update Background size
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    // Load tileset + pal + tilemap
    DMANow(3, textTiles, &CHARBLOCK[0], textTilesLen/2);
    DMANow(3, textPal, BG_PALETTE, textPalLen/2);
    hideSprites();
    shadowOAM[0].attr0 = ATTR0_Y(16) | ATTR0_WIDE;
    shadowOAM[0].attr1 = ATTR1_X(16) | ATTR1_LARGE;
    
    switch(ltext) {
        case A:
        shadowOAM[0].attr2 = ATTR2_TILEID(1, 0) | ATTR2_PALROW(1);
        DMANow(3, text1Map, &SCREENBLOCK[28], text1MapLen/2);
        break;
        case B:
        shadowOAM[0].attr2 = ATTR2_TILEID(1, 20) | ATTR2_PALROW(7);
        DMANow(3, text2Map, &SCREENBLOCK[28], text2MapLen/2);
        break;
        case C:
        shadowOAM[0].attr2 = ATTR2_TILEID(1, 4) | ATTR2_PALROW(2);
        DMANow(3, text3Map, &SCREENBLOCK[28], text3MapLen/2);
        break;
        case D:
        shadowOAM[0].attr2 = ATTR2_TILEID(1, 16) | ATTR2_PALROW(6);
        DMANow(3, text4Map, &SCREENBLOCK[28], text4MapLen/2);
        break;
        case E:
        shadowOAM[0].attr2 = ATTR2_TILEID(1, 8) | ATTR2_PALROW(3);
        DMANow(3, text5Map, &SCREENBLOCK[28], text5MapLen/2);
        break;
        case F:
        shadowOAM[0].attr2 = ATTR2_TILEID(1, 12) | ATTR2_PALROW(5);
        DMANow(3, text6Map, &SCREENBLOCK[28], text6MapLen/2);
        break;
        case CAT:
        shadowOAM[0].attr2 = ATTR2_TILEID(1, 24) | ATTR2_PALROW(0);
        DMANow(3, textCatMap, &SCREENBLOCK[28], textCatMapLen/2);
        break;
        case MAP:
        DMANow(3, textMapMap, &SCREENBLOCK[28], textMapMapLen/2);
        shadowOAM[0].attr0 = ATTR0_Y(88) | ATTR0_WIDE;
        shadowOAM[0].attr1 = ATTR1_X(176) | ATTR1_LARGE;
        shadowOAM[0].attr2 = ATTR2_TILEID(1, 28) | ATTR2_PALROW(0);
        break;
        case COMPLETED:
        shadowOAM[0].attr0 = ATTR0_HIDE;
        DMANow(3, completedTextMap, &SCREENBLOCK[28], completedTextMapLen/2);
        break;
    }
    // Load in spritesheet
    DMANow(3, textSSPal, SPRITE_PALETTE, textSSPalLen/2);
    DMANow(3, textSSTiles, &CHARBLOCK[4], textSSTilesLen/2);
    hOff0 = 0;
    vOff0 = 0;
    draw();
    state = TEXT;
}



// GAME STATES


void goToGame() {
    switch(gameState) {
    case START:
    case HOUSE:
        if (state != GAME) {
            goToHouse();
        } else {
            updateHouse();
        }
        break;
    case SHOPS:
        if (state != GAME) {
            goToShops();
        } else {
            updateShops();
        }
        break;
    case AREA1:
        if (state != GAME) {
            goToArea1();
        } else {
            updateArea1();
        }
        break;
    case AREA2:
        if (state != GAME) {
            goToArea2();
        } else {
            updateArea2();
        }
        break;
    case FINAL:
        if (state != GAME) {
            goToFinal();
        } else {
            updateFinal();
        }
        break;
    }
}

void goToHouse() {
    // Update Background size
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_4BPP;
    // Load tileset + pal + tilemap
    DMANow(3, houseTiles, &CHARBLOCK[0], houseTilesLen/2);
    DMANow(3, housePal, BG_PALETTE, housePalLen/2);
    DMANow(3, houseMap, &SCREENBLOCK[28], houseMapLen/2);
    // Load in spritesheet
    DMANow(3, mainSSPal, SPRITE_PALETTE, mainSSPalLen/2);
    DMANow(3, mainSSTiles, &CHARBLOCK[4], mainSSTilesLen/2);
    hideSprites();
    // Initialize game objects
    initHouse();
    // Set map size
    mapWidth = HOUSE_WIDTH * 8;
    mapHeight = HOUSE_HEIGHT * 8;
    hOff0 = 0;
    vOff0 = 0;
    // Update registers and sprites
    draw();

    // Sound
    if (state == PAUSE || state == OPEN_INVENTORY  || state == TEXT) {
        unpauseSounds();
    } else if (gameState != HOUSE || gameState != SHOPS) {
        playSoundA(Lightyear_City_data, Lightyear_City_length, 1);
    }

    // Update state
    state = GAME;
    gameState = HOUSE;
}

void goToShops() {
    // Update Background size
    REG_DISPCTL = MODE(0) |  BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_WIDE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(18) | BG_SIZE_WIDE | 1;
    REG_BG2CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | 2; 
    // Load tileset + pal + tilemap
    DMANow(3, shopsTiles, &CHARBLOCK[0], shopsTilesLen/2);
    DMANow(3, shopsPal, BG_PALETTE, shopsPalLen/2);
    DMANow(3, shopsBG0Map, &SCREENBLOCK[16], shopsBG0MapLen/2);
    DMANow(3, shopsBG1Map, &SCREENBLOCK[18], shopsBG1MapLen/2);
    DMANow(3, shopsSkyMap, &SCREENBLOCK[20], shopsSkyMapLen/2);
    // Load in spritesheet
    DMANow(3, mainSSPal, SPRITE_PALETTE, mainSSPalLen/2);
    DMANow(3, mainSSTiles, &CHARBLOCK[4], mainSSTilesLen/2);
    hideSprites();
    // Initialize game objects
    initShops();
    // Set map size
    mapWidth = SHOPSBG0_WIDTH * 8;
    mapHeight = SHOPSBG0_HEIGHT * 8;
    // Update registers and sprites
    draw();

    // Music
    if (state == PAUSE || state == OPEN_INVENTORY || state == TEXT) {
        unpauseSounds();
    } else if (gameState != HOUSE) {
        playSoundA(Lightyear_City_data, Lightyear_City_length, 1);
    }

    // Update state
    state = GAME;
    gameState = SHOPS;
}

void goToArea1() {
    // Update Background size
    REG_DISPCTL = MODE(0) |  BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_LARGE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_SIZE_LARGE | 1;
    REG_BG2CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24) | BG_SIZE_TALL | 2; 
    
    // Load in background
    DMANow(3, area1Tiles, &CHARBLOCK[0], area1TilesLen/2);
    DMANow(3, area1Pal, BG_PALETTE, area1PalLen/2);
    DMANow(3, area1BG0Map, &SCREENBLOCK[16], area1BG0MapLen/2);
    DMANow(3, area1BG1Map, &SCREENBLOCK[20], area1BG1MapLen/2);
    DMANow(3, area1BG2Map, &SCREENBLOCK[24], area1BG2MapLen/2);
    // Load in spritesheet
    DMANow(3, area1SSPal, SPRITE_PALETTE, area1SSPalLen/2);
    DMANow(3, area1SSTiles, &CHARBLOCK[4], area1SSTilesLen/2);
    hideSprites();
    // Initialize game objects
    initArea1();
    // Set map size
    mapWidth = AREA1BG0_WIDTH * 8;
    mapHeight = AREA1BG0_HEIGHT * 8;
    // Update registers and sprites
    hOff2 = 0;
    draw();

    // Music
    if (state == PAUSE || state == OPEN_INVENTORY || state == TEXT) {
        unpauseSounds();
    } else if (gameState != AREA1) {
        playSoundA(pinkBloom_data, pinkBloom_length, 1);
    }

    // Update state
    state = GAME;
    gameState = AREA1;
}

void goToArea2() {
    // Update Background size
    REG_DISPCTL = MODE(0) |  BG_ENABLE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_LARGE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_SIZE_TALL | 1;
    
    // Load in background
    DMANow(3, area2Tiles, &CHARBLOCK[0], area2TilesLen/2);
    DMANow(3, area2Pal, BG_PALETTE, area2PalLen/2);
    DMANow(3, area2BG0Map, &SCREENBLOCK[16], area2BG0MapLen/2);
    DMANow(3, area2BG1Map, &SCREENBLOCK[20], area2BG1MapLen/2);
    // Load in spritesheet
    DMANow(3, area2SSPal, SPRITE_PALETTE, area2SSPalLen/2);
    DMANow(3, area2SSTiles, &CHARBLOCK[4], area2SSTilesLen/2);
    hideSprites();
    // Initilialize game objects
    initArea2();
    // Set map size
    mapWidth = AREA2BG0_WIDTH * 8;
    mapHeight = AREA2BG0_HEIGHT * 8;
    // Update registers and sprites
    hOff1 = 0;
    draw();

    // Music
    if (state == PAUSE || state == OPEN_INVENTORY) {
        unpauseSounds();
    } else if (gameState != AREA2) {
        playSoundA(toTheUnknown_data, toTheUnknown_length, 1);
    }

    // Update state
    state = GAME;
    gameState = AREA2;
}

void goToFinal() {
    // Update Background size
    REG_DISPCTL = MODE(0) |  BG_ENABLE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_WIDE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | 1;
    
    // Load in background
    DMANow(3, area2Tiles, &CHARBLOCK[0], area2TilesLen/2);
    DMANow(3, area2Pal, BG_PALETTE, area2PalLen/2);
    DMANow(3, finalBG0Map, &SCREENBLOCK[16], area2BG0MapLen/2);
    DMANow(3, finalBG1Map, &SCREENBLOCK[20], area2BG1MapLen/2);
    // Load in spritesheet
    DMANow(3, finalSSPal, SPRITE_PALETTE, finalSSPalLen/2);
    DMANow(3, finalSSTiles, &CHARBLOCK[4], finalSSTilesLen/2);
    hideSprites();
    // Initilialize game objects
    initFinal();
    // Set map size
    mapWidth = FINALBG0_WIDTH * 8;
    mapHeight = FINALBG0_HEIGHT * 8;
    // Update registers and sprites
    vOff1 = 10;
    draw();

    // Music
    if (state == PAUSE || state == OPEN_INVENTORY) {
        unpauseSounds();
    } else if (gameState != FINAL) {
        playSoundA(theHiddenOne_data, theHiddenOne_length, 1);
    }

    // Update state
    state = GAME;
    gameState = FINAL;
}
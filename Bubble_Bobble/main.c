#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "game.h"
#include "spritesheet.h"
#include "tileset.h"
#include "start.h"
#include "pause.h"
#include "win.h"
#include "lose.h"
#include "level2.h"
#include "level1.h"

// States
enum STATE {START, PAUSE, GAME1, GAME2, LOSE, WIN} state;

// Function Prototypes
void initialize();
void goToStart();
void goToPause();
void goToLose();
void goToWin();
void goToGame1();
void game1();
void goToGame2();
void game2();

// Shadow OAM
OBJ_ATTR shadowOAM[128];

// Sprites
PLAYER player;
// Score Sprites
SCORE hundreds;
SCORE tens;
SCORE ones;

// Button Register
unsigned short oldButtons;
unsigned short buttons;

// Tracked variables
int level;
int stall;
int score;

int main() {
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;
        switch(state) {
            case START:
                if (BUTTON_PRESSED(BUTTON_START)) {
                    goToGame1();
                }
                break;
            case PAUSE:
                if (BUTTON_PRESSED(BUTTON_START)) {
                    if (level == 1) {
                        goToGame1();
                    } else {
                        goToGame2();
                    }
                }
                break;
            case GAME1:
                if (BUTTON_PRESSED(BUTTON_START)) {
                    goToPause();
                } else {
                    game1();
                }
                break;
            case GAME2:
                if (BUTTON_PRESSED(BUTTON_START)) {
                    goToPause();
                } else {
                    game2();
                }
                break;
            case LOSE:
                if (BUTTON_PRESSED(BUTTON_START)) {
                    hideSprites();
                    goToStart();
                }
                break;
            case WIN:
                if (BUTTON_PRESSED(BUTTON_START)) {
                    hideSprites();
                    goToStart();
                }
                break;
        }
    }
}

void initialize() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    mgba_open();

    // Load in sprites
    DMANow(3, spritesheetPal, SPRITE_PAL, spritesheetPalLen/2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    // Load in tileset and palette
    DMANow(3, tilesetTiles, &CHARBLOCK[0], tilesetTilesLen/2);
    DMANow(3, tilesetPal, PALETTE, tilesetPalLen/2);

    // Button register
    oldButtons = 0;
    buttons = REG_BUTTONS;

    stall = 0;

    goToStart();
}

void goToStart() {
    // Load in start background
    DMANow(3, startMap, &SCREENBLOCK[28], startMapLen/2);

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    state = START;
}

void goToGame1() {
    // Load in game1 background
    DMANow(3, level1Map, &SCREENBLOCK[28], level1MapLen/2);

    if (state == START) {
        initGame1Sprites();
    } else {
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
    
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);


    level = 1;
    state = GAME1;

    game1();
}

void game1() {
    if (level == 2) {
        stall++;
        if (stall % 10 == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.bubbleFrames;
        }
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y) | ATTR0_SQUARE;
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x) | ATTR1_MEDIUM;
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(4 * player.currentFrame, 8);

        waitForVBlank();
        DMANow(3, shadowOAM, OAM, 512);

        if (stall % 200 == 0) {
            hideSprites();
            goToGame2(); 
        }
    } else {
        updateGame1();
        if (player.lives == 0) {
            hideSprites();
            goToLose();
        } else {
            waitForVBlank();
            DMANow(3, shadowOAM, OAM, 512);
        }
    }
}

void goToGame2() {
    // Load in game2 background
    DMANow(3, level2Map, &SCREENBLOCK[28], level2MapLen/2);

    if (state == GAME1) {
        initGame2Sprites();
    } else {
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

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    state = GAME2;
    game2();
}

void game2() {
    if (level == 0) {
        stall++;
        if (stall % 10 == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.bubbleFrames;
        }
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y) | ATTR0_SQUARE;
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x) | ATTR1_MEDIUM;
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(4 * player.currentFrame, 8);

        waitForVBlank();
        DMANow(3, shadowOAM, OAM, 512);

        if (stall % 200 == 0) {
            hideSprites();
            goToWin(); 
        }
    } else if (player.lives == 0) {
        hideSprites();
        goToLose();
    } else {
        updateGame2();
        waitForVBlank();
        DMANow(3, shadowOAM, OAM, 512);
    }
    
}

void goToPause() {
    // Load in pause background
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen/2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    state = PAUSE;
}

void goToLose() {
    // Load in lose background
    DMANow(3, loseMap, &SCREENBLOCK[28], loseMapLen/2);
    // Score
    shadowOAM[hundreds.oamIndex].attr0 = ATTR0_Y(50) | ATTR0_TALL;
    shadowOAM[hundreds.oamIndex].attr1 = ATTR1_X(109) | ATTR1_TINY;
    shadowOAM[hundreds.oamIndex].attr2 = ATTR2_TILEID(hundreds.number + 17, 15);

    shadowOAM[tens.oamIndex].attr0 = ATTR0_Y(50) | ATTR0_TALL;
    shadowOAM[tens.oamIndex].attr1 = ATTR1_X(118) | ATTR1_TINY;
    shadowOAM[tens.oamIndex].attr2 = ATTR2_TILEID(tens.number + 17, 15);

    shadowOAM[ones.oamIndex].attr0 = ATTR0_Y(50) | ATTR0_TALL;
    shadowOAM[ones.oamIndex].attr1 = ATTR1_X(127) | ATTR1_TINY;
    shadowOAM[ones.oamIndex].attr2 = ATTR2_TILEID(ones.number + 17, 15);
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    state = LOSE;
}

void goToWin() {
    // Load in win background
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen/2);
    // Score
    shadowOAM[hundreds.oamIndex].attr0 = ATTR0_Y(50) | ATTR0_TALL;
    shadowOAM[hundreds.oamIndex].attr1 = ATTR1_X(109) | ATTR1_TINY;
    shadowOAM[hundreds.oamIndex].attr2 = ATTR2_TILEID(hundreds.number + 17, 15);

    shadowOAM[tens.oamIndex].attr0 = ATTR0_Y(50) | ATTR0_TALL;
    shadowOAM[tens.oamIndex].attr1 = ATTR1_X(118) | ATTR1_TINY;
    shadowOAM[tens.oamIndex].attr2 = ATTR2_TILEID(tens.number + 17, 15);

    shadowOAM[ones.oamIndex].attr0 = ATTR0_Y(50) | ATTR0_TALL;
    shadowOAM[ones.oamIndex].attr1 = ATTR1_X(127) | ATTR1_TINY;
    shadowOAM[ones.oamIndex].attr2 = ATTR2_TILEID(ones.number + 17, 15);

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    state = WIN;
}



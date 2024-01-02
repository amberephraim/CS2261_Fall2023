#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "game.h"
#include "backgrounds.h"
#include "spritesheets.h"

// ShadowOAM
OBJ_ATTR shadowOAM[128];

// Button register
extern unsigned short oldButtons;
extern unsigned short buttons;

extern enum STATE {SPLASH, INSTRUCTIONS, PAUSE, OPEN_INVENTORY, STORE, GAME, LOSE, WIN, TEXT} state;
extern enum GAME_STATE {START, HOUSE, SHOPS, AREA1, AREA2} gameState;
extern enum LAUNCH_TEXT {A, B, C, D, E, F, CAT, MAP, COMPLETED} ltext;

// Screen variables
extern int hOff0;
extern int vOff0;
extern int hOff1;
extern int vOff1;
extern int mapWidth;
extern int mapHeight;

// Free roam
extern int devMode;

// PLAYER
PLAYER player;
// marker
SPRITE plumbob;

// Collision map
extern void* cm;

// Palette switching
int pal;
int numPals;

// Move maps
int switchMap;
int toText;

// CAT
NPC cat;

// COLLECTIBLES
WEAPON allWeapons[4];
ITEM allItems[22];

// INVENTORY
INVENTORY inventory;

void initHouse() {
    // set collision map
    cm = housecmBitmap;
    // player color scheme
    numPals = 4;
    // move maps
    switchMap = 0;
    toText = 0;

    if (pal != 0) {
        setColor();
    }

    // set player position based on prrevious state
    if (gameState == SHOPS) {
        player.x = 372;
        player.y = 120;
        player.direction = IDLE_LEFT;
    } else if (state != PAUSE && state != OPEN_INVENTORY && state != TEXT) {
        player.x = 6;
        player.y = 120;
        player.direction = IDLE_RIGHT;
    }
    
    // set player variables
    player.jumping = 0;
    player.falling = 0;
    player.damageBuffer = 0;
    player.isAttacking = 0;
    // set hOff and vOff
    hOff0 = player.x - (SCREENWIDTH - player.width) / 2;
    vOff0 = player.y - (SCREENHEIGHT - player.height) / 2;

    // plumbob
    plumbob.timeUntilNextFrame = 10;
    plumbob.currentFrame = 0;
    plumbob.numFrames = 4;

    // cat
    cat.oamIndex = 3;
    cat.timeUntilNextFrame = 20;
    cat.currentFrame = 0;
    cat.numFrames = 4;
    cat.x = 275;
    cat.y = 140;   
    cat.width = 16;
    cat.height = 9;
}

void updateHouse() {
    plumbob.active = 0;
    updatePlayer();
    updateCat();
    // conditionals to advance to new maps and win/lose state before drawing
    if (switchMap) {
        goToShops();
    } else if (toText) {
        goToText();
    } else {
        draw();
    }
}

void plumbobHouse(int left, int right) {
    // Show plumbob in interactable areas
    if ((left == 1 || right == 1) && cat.talk) { // door
        plumbob.active = 1;
        plumbob.palRow = 8;
        if (BUTTON_PRESSED(BUTTON_A)) {
            switchMap = 1; // goToShops()
        }
    } else if (left == 2 || right == 2) { // wardrobe
        plumbob.active = 1;
        plumbob.palRow = 8;
        // cycle through color schemes
        if (BUTTON_PRESSED(BUTTON_A)) {
            pal = (pal + 1) % numPals;
            setColor();
        }
    } else if (collision(player.x + 8, player.y, 16, 32, cat.x, cat.y, cat.width, cat.height)) {
        plumbob.active = 1;
        plumbob.palRow = 9;
        if (BUTTON_PRESSED(BUTTON_A)) {
            cat.talk = 1;
            ltext = CAT;
            toText = 1;
        }
    }
}

// will add dialogue and update exit conditions based on convo
void updateCat() {
    cat.timeUntilNextFrame--;
    if (!cat.timeUntilNextFrame) {
        cat.currentFrame = (cat.currentFrame + 1) % cat.numFrames;
        cat.timeUntilNextFrame = 20;
    }
    shadowOAM[cat.oamIndex].attr0 = ATTR0_Y(screenY(cat.y)) | ATTR0_SQUARE;
    shadowOAM[cat.oamIndex].attr1 = ATTR1_X(screenX(cat.x)) | ATTR1_SMALL | ATTR1_HFLIP;
    shadowOAM[cat.oamIndex].attr2 = ATTR2_TILEID(24 + cat.currentFrame * 2, 4);
}
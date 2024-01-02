#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "game.h"
#include "move.h"

// ShadowOAM
OBJ_ATTR shadowOAM[128];

// Button register
unsigned short oldButtons;
unsigned short buttons;

// PLAYER
PLAYER player;

// COLLECTIBLES
WEAPON allWeapons[4];
ITEM allItems[22];
// INVENTORY
INVENTORY inventory;

// Credits
SPRITE coin;

// Select
SPRITE select;
int index;

// Exit
SPRITE exit;
int toShops;

// Description + Boost + cost
SPRITE description;
SPRITE boost;
SPRITE price;

// Store items
ITEM storeItems[7];


void initStore() {
    // Map change
    toShops = 0;
    // Cheat
    if (allWeapons[GUN].collected) {
        inventory.credits = 9999;
    }
    // Animated coin
    coin.x = 171;
    coin.y = 12;
    coin.timeUntilNextFrame = 10;
    coin.currentFrame = 0;
    coin.numFrames = 5;
    coin.oamIndex = 1;
    // Set credits
    updateCredits();

    // Items
    // Initialize description + boost + price
    description.oamIndex = 7;
    description.y = 24;
    description.x = 24;

    boost.oamIndex = 8;
    boost.y = 32;
    boost.x = 24;

    price.oamIndex = 9;
    price.x = 34;
    price.y = 52;

    ITEM a = {128, 48, LOLLY, 50};
    ITEM b = {152, 48, CAKE, 90};
    ITEM c = {176, 48, PANCAKE, 130};
    ITEM d = {200, 48, BURGER, 175};
    ITEM e = {128, 72, DEFENSE_POTION, 425};
    ITEM f = {152, 72, HEALTH_POTION, 425};
    ITEM g = {176, 72, DAMAGE_POTION, 425};
    storeItems[0] = a;
    storeItems[1] = b;
    storeItems[2] = c;
    storeItems[3] = d;
    storeItems[4] = e;
    storeItems[5] = f;
    storeItems[6] = g;

    // Initialize select
    index = 0;
    select.x = 128;
    select.y = 48;
    select.xVel = 1;
    select.yVel = 1;
    select.xVel = 24;
    select.yVel = 24;
    select.oamIndex = 0;

    shadowOAM[select.oamIndex].attr0 = ATTR0_Y(select.y) | ATTR0_SQUARE;
    shadowOAM[select.oamIndex].attr1 = ATTR1_X(select.x) | ATTR1_SMALL;
    shadowOAM[select.oamIndex].attr2 = ATTR2_TILEID(6, 12);

    exit.x = 8;
    exit.y = 144;
    exit.oamIndex = 65;
    shadowOAM[exit.oamIndex].attr0 = ATTR0_Y(exit.y) | ATTR0_WIDE;
    shadowOAM[exit.oamIndex].attr1 = ATTR1_X(exit.x) | ATTR1_TINY;
    shadowOAM[exit.oamIndex].attr2 = ATTR2_TILEID(10, 10);

    // Init weapoons
    if (allWeapons[1].collected) {
        setTile(16, 12, 54, 28);
        setTile(17, 12, 56, 28);
        setTile(16, 13, 104, 28);
        setTile(17, 13, 106, 28);
    }
    if (allWeapons[2].collected) {
        setTile(19, 12, 54, 28);
        setTile(20, 12, 56, 28);
        setTile(19, 13, 104, 28);
        setTile(20, 13, 106, 28);
    }
}

void updateStore() {
    // Bounds for selector
    if (BUTTON_PRESSED(BUTTON_DOWN) && select.y < 120) {
        if ((select.y == 48 && select.x == 200)
            || (select.y == 72 && select.x == 176)) {
            select.x -= select.xVel;
        } 
        playSoundB(move_data, move_length, 0);
        select.y += select.yVel;
    } else if (BUTTON_PRESSED(BUTTON_UP) && select.y > 48) {
        select.y -= select.yVel;
        playSoundB(move_data, move_length, 0);
    }
    if (BUTTON_PRESSED(BUTTON_LEFT) && select.x > 128) {
        select.x -= select.xVel;
        playSoundB(move_data, move_length, 0);
    } else if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        if ((select.y == 48 && select.x < 200)
            || (select.y == 72 && select.x < 176)
            || (select.y == 96 && select.x < 152)) {
            select.x += select.xVel;
            playSoundB(move_data, move_length, 0);
        }
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        playSoundB(move_data, move_length, 0);
        if (select.y == 120) {
            toShops = 1;
        } else if (select.y == 96) {
            if (select.x == 128) {
                if (inventory.credits >= 500 && !allWeapons[1].collected) {
                    allWeapons[1].collected = 1;
                    inventory.credits -= 500;
                    setTile(16, 12, 54, 28);
                    setTile(17, 12, 56, 28);
                    setTile(16, 13, 104, 28);
                    setTile(17, 13, 106, 28);
                }
            } else {
                if (inventory.credits >= 1000 && !allWeapons[2].collected) {
                    allWeapons[2].collected = 1;
                    inventory.credits -= 1000;
                    setTile(19, 12, 54, 28);
                    setTile(20, 12, 56, 28);
                    setTile(19, 13, 104, 28);
                    setTile(20, 13, 106, 28);
                }
            }
        } else {
            for (int i = 0; i < 7; i++) {
                if (select.x == storeItems[i].x && select.y == storeItems[i].y) {
                    if (inventory.credits - storeItems[i].price >= 0) { //if enough money
                        for (int j = 0; j < 22; j++) { // add item to first empty spot in inventory
                            if (!allItems[j].collected) {
                                inventory.credits -= storeItems[i].price;
                                allItems[j].collected = 1;
                                allItems[j].used = 0;
                                allItems[j].itemType = storeItems[i].itemType;
                                break;
                            }
                        }
                    }
                    break;
                }
            }
        }
        
    }
    // Update ShadowOAM
    shadowOAM[select.oamIndex].attr0 = ATTR0_Y(select.y) | ATTR0_SQUARE;
    shadowOAM[select.oamIndex].attr1 = ATTR1_X(select.x) | ATTR1_SMALL;
    shadowOAM[select.oamIndex].attr2 = ATTR2_TILEID(6, 12);
    shadowOAM[exit.oamIndex].attr2 = ATTR2_TILEID(10, 10);
    if (select.y == 120) {
        shadowOAM[select.oamIndex].attr0 |= ATTR0_HIDE;
        shadowOAM[exit.oamIndex].attr2 = ATTR2_TILEID(10, 11);
    }
    
    if (toShops) {
        goToShops();
    } else {
        updateCredits();
        updateItem();
        draw();
    }
}

void updateCredits() {
    // Coin Icon
    coin.timeUntilNextFrame--;
    if (coin.timeUntilNextFrame == 0) {
        coin.timeUntilNextFrame = 10;
        coin.currentFrame = (coin.currentFrame + 1) % coin.numFrames;
    }
    // Update ShadowOAM
    shadowOAM[coin.oamIndex].attr0 = ATTR0_Y(coin.y) | ATTR0_SQUARE;
    shadowOAM[coin.oamIndex].attr1 = ATTR1_X(coin.x) | ATTR1_SMALL;
    shadowOAM[coin.oamIndex].attr2 = ATTR2_TILEID(coin.currentFrame * 2, 10);

    int ten = (inventory.credits / 10) % 10;
    int hun = (inventory.credits / 100) % 10;
    int thou = (inventory.credits / 1000) % 10;
    int ones = inventory.credits % 10;
    int spacing = 0;
    // Update ShadowOAM
    if (thou > 0) {
        // thoudands
        shadowOAM[2].attr0 = ATTR0_Y(15) | ATTR0_SQUARE;
        shadowOAM[2].attr1 = ATTR1_X(190) | ATTR1_TINY;
        shadowOAM[2].attr2 = ATTR2_TILEID(11 + thou, 1);
        spacing += 6;
    } else {
        shadowOAM[2].attr0 = ATTR0_HIDE;
    }
    // hundreds
    if (hun > 0 || thou > 0) {
       shadowOAM[3].attr0 = ATTR0_Y(15) | ATTR0_SQUARE;
        shadowOAM[3].attr1 = ATTR1_X(190 + spacing) | ATTR1_TINY;
        shadowOAM[3].attr2 = ATTR2_TILEID(11 + hun, 1); 
        spacing += 6;
    } else {
        shadowOAM[3].attr0 = ATTR0_HIDE;
    }
    // tens
    shadowOAM[4].attr0 = ATTR0_Y(15) | ATTR0_SQUARE;
    shadowOAM[4].attr1 = ATTR1_X(190 + spacing) | ATTR1_TINY;
    shadowOAM[4].attr2 = ATTR2_TILEID(11 + ten, 1);
    spacing += 6;
    // ones
    shadowOAM[5].attr0 = ATTR0_Y(15) | ATTR0_SQUARE;
    shadowOAM[5].attr1 = ATTR1_X(190 + spacing) | ATTR1_TINY;
    shadowOAM[5].attr2 = ATTR2_TILEID(11 + ones, 1);
}

void updateItem() {
    // Update description, boost, and price
    shadowOAM[price.oamIndex].attr0 = ATTR0_Y(price.y) | ATTR0_WIDE;
    shadowOAM[price.oamIndex].attr1 = ATTR1_X(price.x) | ATTR1_LARGE;
    if (select.y == 48) {
        if (select.x == 128) {
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_SMALL;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(20, 12);
            shadowOAM[price.oamIndex].attr2 = ATTR2_TILEID(0, 19);
            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_SQUARE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_TINY;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(24, 12);
            
        } else if (select.x == 152) {
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_SMALL;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(12, 12);
            shadowOAM[price.oamIndex].attr2 = ATTR2_TILEID(8, 19);
            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_SQUARE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_TINY;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(25, 12);
        } else if (select.x == 176) {
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_LARGE;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(24, 15);
            shadowOAM[price.oamIndex].attr2 = ATTR2_TILEID(16, 19);
            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_SQUARE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_TINY;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(26, 12);
        } else {
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_SMALL;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(8, 12);
            shadowOAM[price.oamIndex].attr2 = ATTR2_TILEID(24, 19);
            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_SQUARE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_TINY;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(27, 12);
        }
    } else if (select.y == 72) {
        if (select.x == 128) {
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_LARGE;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(8, 15);
            shadowOAM[price.oamIndex].attr2 = ATTR2_TILEID(16, 23);
            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_WIDE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_SMALL;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(16, 12);
        } else if (select.x == 152) {
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_LARGE;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(0, 15);
            shadowOAM[price.oamIndex].attr2 = ATTR2_TILEID(16, 23);
            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_WIDE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_TINY;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(28, 12);
        } else {
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_LARGE;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(16, 15);
            shadowOAM[price.oamIndex].attr2 = ATTR2_TILEID(16, 23);
            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_WIDE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_SMALL;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(16, 12);
        }
    } else {
        if (select.x == 128) {
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_LARGE;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(24, 23);
            shadowOAM[price.oamIndex].attr2 = ATTR2_TILEID(0, 23);
            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_WIDE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_SMALL;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(8, 13);
        } else {
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_LARGE;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(24, 6);
            shadowOAM[price.oamIndex].attr2 = ATTR2_TILEID(8, 23);
            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_WIDE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_SMALL;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(12, 13);
        }
    }
}
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
// color scheme
extern int pal;

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
// Description + Boost 
SPRITE description;
SPRITE boost;

// Timer for potions
int vBlankCount;

void initInventory() {
    // Animated coin
    coin.x = 74;
    coin.y = 19;
    coin.timeUntilNextFrame = 10;
    coin.currentFrame = 0;
    coin.numFrames = 5;
    coin.oamIndex = 1;

    // Set credits
    // Currency numbers
    int ten = (inventory.credits / 10) % 10;
    int hun = (inventory.credits / 100) % 10;
    int thou = (inventory.credits / 1000) % 10;
    int ones = inventory.credits % 10;
    int spacing = 0;
    // Update ShadowOAM
    if (thou > 0) {
        // thoudands
        shadowOAM[2].attr0 = ATTR0_Y(23) | ATTR0_SQUARE;
        shadowOAM[2].attr1 = ATTR1_X(95) | ATTR1_TINY;
        shadowOAM[2].attr2 = ATTR2_TILEID(11 + thou, 1);
        spacing += 6;
    }
    // hundreds
    if (hun > 0 || thou > 0) {
       shadowOAM[3].attr0 = ATTR0_Y(23) | ATTR0_SQUARE;
        shadowOAM[3].attr1 = ATTR1_X(95 + spacing) | ATTR1_TINY;
        shadowOAM[3].attr2 = ATTR2_TILEID(11 + hun, 1); 
        spacing += 6;
    }
    // tens
    shadowOAM[4].attr0 = ATTR0_Y(23) | ATTR0_SQUARE;
    shadowOAM[4].attr1 = ATTR1_X(95 + spacing) | ATTR1_TINY;
    shadowOAM[4].attr2 = ATTR2_TILEID(11 + ten, 1);
    spacing += 6;
    // ones
    shadowOAM[5].attr0 = ATTR0_Y(23) | ATTR0_SQUARE;
    shadowOAM[5].attr1 = ATTR1_X(95 + spacing) | ATTR1_TINY;
    shadowOAM[5].attr2 = ATTR2_TILEID(11 + ones, 1);

    // Set health
    if (player.health != 16) {
        updateHealth(); 
    } else {
        shadowOAM[6].attr0 = ATTR0_Y(48) | ATTR0_WIDE;
        shadowOAM[6].attr1 = ATTR1_X(10) | ATTR1_TINY;
        shadowOAM[6].attr2 = ATTR2_TILEID(0, 14);
    }
    // Set baseDamage tile
    if (player.baseDamage != 1) {
        setTile(21, 2, 13 + player.baseDamage, 28);
        setTile(21, 3, 38 + player.baseDamage, 28);
    }
    // Set weaponDamage tile
    if (player.equippedWeapon.weaponType == GUN) {
        setTile(23, 2, 23, 28);
        setTile(23, 3, 48, 28);
        setTile(24, 2, 24, 28);
        setTile(24, 3, 49, 28);
    } else if (player.equippedWeapon.weaponType != NONE) {
        setTile(23, 2, 64 + player.equippedWeapon.damage, 28);
        setTile(23, 3, 89 + player.equippedWeapon.damage, 28);
    }

    // Starting position for inventory
    int positionX = 2;
    int positionY = 12;
    // Display items in inventory
    for (int i = 0; i < 22; i++) {
        // Increment position
        positionX += 2;
        if (i == 11) {
            positionX = 4;
            positionY += 2;
        }
        if (!allItems[i].collected) continue;
        // Switch tiles to match item
        switch(allItems[i].itemType) {
            case LOLLY:
            setTile(positionX, positionY, 117, 28);
            setTile(positionX + 1, positionY, 118, 28);
            setTile(positionX, positionY + 1, 142, 28);
            setTile(positionX + 1, positionY + 1, 143, 28);
            break;
            case PANCAKE:
            setTile(positionX, positionY, 119, 28);
            setTile(positionX + 1, positionY, 120, 28);
            setTile(positionX, positionY + 1, 144, 28);
            setTile(positionX + 1, positionY + 1, 145, 28);
            break;
            case CAKE:
            setTile(positionX, positionY, 115, 28);
            setTile(positionX + 1, positionY, 116, 28);
            setTile(positionX, positionY + 1, 140, 28);
            setTile(positionX + 1, positionY + 1, 141, 28);
            break;
            case BURGER:
            setTile(positionX, positionY, 113, 28);
            setTile(positionX + 1, positionY, 114, 28);
            setTile(positionX, positionY + 1, 138, 28);
            setTile(positionX + 1, positionY + 1, 139, 28);
            break;
            case HEALTH_POTION:
            setTile(positionX, positionY, 165, 28);
            setTile(positionX + 1, positionY, 166, 28);
            setTile(positionX, positionY + 1, 190, 28);
            setTile(positionX + 1, positionY + 1, 191, 28);
            break;
            case DEFENSE_POTION:
            setTile(positionX, positionY, 163, 28);
            setTile(positionX + 1, positionY, 164, 28);
            setTile(positionX, positionY + 1, 188, 28);
            setTile(positionX + 1, positionY + 1, 189, 28);
            break;
            case DAMAGE_POTION:
            setTile(positionX, positionY, 167, 28);
            setTile(positionX + 1, positionY, 168, 28);
            setTile(positionX, positionY + 1, 192, 28);
            setTile(positionX + 1, positionY + 1, 193, 28);
            break;
        }
    }

    // Display weapons
    for (int i = 0; i < 3; i++) {
        if (!allWeapons[i + 1].collected) continue;
        if (allWeapons[i + 1].weaponType == player.equippedWeapon.weaponType) {
            setTile(20 + (2 * i), 4, 86 + (50 * i), 28);
            setTile(21 + (2 * i), 4, 87 + (50 * i), 28);
            setTile(20 + (2 * i), 5, 111 + (50 * i), 28);
            setTile(21 + (2 * i), 5, 112 + (50 * i), 28);
        } else {
            setTile(20 + (2 * i), 4, 125 + (50 * i), 28);
            setTile(21 + (2 * i), 4, 126 + (50 * i), 28);
            setTile(20 + (2 * i), 5, 150 + (50 * i), 28);
            setTile(21 + (2 * i), 5, 151 + (50 * i), 28);
        }
    }


    // Initialize select
    index = 0;
    select.x = 32;
    select.y = 96;
    select.xVel = 16;
    select.yVel = 16;
    select.oamIndex = 0;
    shadowOAM[select.oamIndex].attr0 = ATTR0_Y(select.y) | ATTR0_SQUARE;
    shadowOAM[select.oamIndex].attr1 = ATTR1_X(select.x) | ATTR1_SMALL;
    shadowOAM[select.oamIndex].attr2 = ATTR2_TILEID(6, 12);

    // Initialize description and boost
    description.oamIndex = 7;
    description.y = 82;
    description.x = 56;
    description.xVel = 1;

    boost.oamIndex = 8;
    boost.y = 81;
    boost.x = 160;
    boost.xVel = 1;
}

void updateInventory() {
    // Bounds for the selector
    if (BUTTON_PRESSED(BUTTON_UP)) {
        if (select.y == 96) {
            // Play sound
            playSoundB(move_data, move_length, 0);
            select.y = 32;
            select.x = 160;
        } else if (select.y == 112) {
            select.y -= select.yVel;
            playSoundB(move_data, move_length, 0);
        }
    } else if (BUTTON_PRESSED(BUTTON_DOWN)) {
        if (select.y == 32) {
            select.y = 96;
            select.x = 32;
            playSoundB(move_data, move_length, 0);
        } else if (select.y = 96) {
            select.y += select.yVel;
            playSoundB(move_data, move_length, 0);
        }
    } else if (BUTTON_PRESSED(BUTTON_LEFT)) {
        if ((select.y > 95 && select.x > 32) || (select.y < 95 && select.x > 160)) {
            select.x -= select.xVel;
            playSoundB(move_data, move_length, 0);
        }
    } else if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        if (select.x < 192) {
            select.x += select.xVel;
            playSoundB(move_data, move_length, 0);
        }
    } 
    // Calculate index in Items/Weapons
    index = (select.x - 32) / 16;
    if (select.y == 32) {
        index = (select.x - 160) / 16 + 1;
    } else if (select.y == 112) {
        index += 11;
    }
    updateDescription();
    // Interact
    if (BUTTON_PRESSED(BUTTON_A)) {
        if (select.y == 32) {
            // Change equipped weapon
            if (allWeapons[index].collected) {
                player.equippedWeapon = allWeapons[index];
                updateWeapon();
            }
        } else  {
            // Use items
            if (allItems[index].collected) {
                updateItems();
            }
        }
    }
    // Update ShadowOAM
    shadowOAM[select.oamIndex].attr0 = ATTR0_Y(select.y) | ATTR0_SQUARE;
    shadowOAM[select.oamIndex].attr1 = ATTR1_X(select.x) | ATTR1_SMALL;
    shadowOAM[select.oamIndex].attr2 = ATTR2_TILEID(6, 12);

    updateCurrency(); //coin animation
    draw();
}

void updateCurrency() {
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
}

void updateWeapon() {
    for (int i = 0; i < 3; i++) {
        if (!allWeapons[i + 1].collected) continue;
        if (allWeapons[i + 1].weaponType == player.equippedWeapon.weaponType) {
            setTile(20 + (2 * i), 4, 86 + (50 * i), 28);
            setTile(21 + (2 * i), 4, 87 + (50 * i), 28);
            setTile(20 + (2 * i), 5, 111 + (50 * i), 28);
            setTile(21 + (2 * i), 5, 112 + (50 * i), 28);
        } else {
            setTile(20 + (2 * i), 4, 125 + (50 * i), 28);
            setTile(21 + (2 * i), 4, 126 + (50 * i), 28);
            setTile(20 + (2 * i), 5, 150 + (50 * i), 28);
            setTile(21 + (2 * i), 5, 151 + (50 * i), 28);
        }
    }
    // Set weaponDamage tile
    if (player.equippedWeapon.weaponType == GUN) {
        setTile(23, 2, 23, 28);
        setTile(23, 3, 48, 28);
        setTile(24, 2, 24, 28);
        setTile(24, 3, 49, 28);
    } else if (player.equippedWeapon.weaponType != NONE) {
        setTile(23, 2, 64 + player.equippedWeapon.damage, 28);
        setTile(23, 3, 89 + player.equippedWeapon.damage, 28);
        setTile(24, 2, 80, 28);
        setTile(24, 3, 80, 28);
    }
}

void updateHealth() {
    // MaxHealth
    if (player.health > player.maxHealth) player.health = player.maxHealth; 

    // Set full and empty bars
    if (player.health >= 4) {
        setTile(3, 6, 233, 28);
    }
    if (player.health >= 8) {
        setTile(4, 6, 233, 28);
    }
    if (player.health >= 12) {
        setTile(5, 6, 233, 28);
    }
    if (player.health == 16) {
        setTile(6, 6, 233, 28);
    }
    if (player.health < 13) {
        setTile(6, 6, 127, 28);
    }
    if (player.health < 9) {
        setTile(5, 6, 127, 28);
    }
    if (player.health < 5) {
        setTile(4, 6, 127, 28);
    }

    // Fill in the rest
    switch(player.health) {
        case 15:
        setTile(6, 6, 232, 28);
        break;
        case 14:
        setTile(6, 6, 231, 28);
        break;
        case 13:
        setTile(6, 6, 230, 28);
        break;
        case 11:
        setTile(5, 6, 232, 28);
        break;
        case 10:
        setTile(5, 6, 231, 28);
        break;
        case 9:
        setTile(5, 6, 230, 28);
        break;
        case 7:
        setTile(4, 6, 232, 28);
        break;
        case 6:
        setTile(4, 6, 231, 28);
        break;
        case 5:
        setTile(4, 6, 230, 28);
        break;
        case 3:
        setTile(3, 6, 232, 28);
        break;
        case 2:
        setTile(3, 6, 231, 28);
        break;
        case 1:
        setTile(3, 6, 230, 28);
        break;
    }

    // Update percentage
    shadowOAM[6].attr0 = ATTR0_Y(48) | ATTR0_WIDE;
    shadowOAM[6].attr1 = ATTR1_X(6) | ATTR1_TINY;
    shadowOAM[6].attr2 = ATTR2_TILEID(32 - (2 * player.health), 14);
}

void updateBaseDamage() {
    // Set baseDamage tile
    setTile(21, 2, 13 + player.baseDamage, 28);
    setTile(21, 3, 64 + player.baseDamage, 28);
}

void updateItems() {
    // Remove item from background
    // divide by 8 to get tileID
    setTile(select.x / 8, select.y / 8, 54, 28);
    setTile(select.x / 8 + 1, select.y / 8, 56, 28);
    setTile(select.x / 8, select.y / 8 + 1, 104, 28);
    setTile(select.x / 8 + 1, select.y / 8 + 1, 106, 28);
    // Use item
    allItems[index].collected = 0;
    switch(allItems[index].itemType) {
        case LOLLY:
            player.health += 2;
            updateHealth();
            break;
            case PANCAKE:
            player.health += 6;
            updateHealth();
            break;
            case CAKE:
            player.health += 4;
            updateHealth();
            break;
            case BURGER:
            player.health += 8;
            updateHealth();
            break;
            case HEALTH_POTION:
            player.health += 16;
            updateHealth();
            break;
            case DEFENSE_POTION:
            player.defenseBoost = 2;
            player.damageBoost = 0; // Only 1 boost should be active
            vBlankCount = 0;
            break;
            case DAMAGE_POTION:
            player.damageBoost = 2;
            player.defenseBoost = 0;
            vBlankCount = 0;
            break;
    }
}

void updateDescription() {
    // Show active potion
    if (player.defenseBoost != 0) {
        shadowOAM[9].attr0 = ATTR0_Y(15) | ATTR0_SQUARE;
        shadowOAM[9].attr1 = ATTR1_X(200) | ATTR1_SMALL;
        shadowOAM[9].attr2 = ATTR2_TILEID(2, 12) | ATTR2_PALROW(7);
    } else if (player.damageBoost != 0) {
        shadowOAM[9].attr0 = ATTR0_Y(15) | ATTR0_SQUARE;
        shadowOAM[9].attr1 = ATTR1_X(200) | ATTR1_SMALL;
        shadowOAM[9].attr2 = ATTR2_TILEID(0, 12) | ATTR2_PALROW(7);
    } else {
        shadowOAM[9].attr0 = ATTR0_HIDE;
    }
    if (!allItems[index].collected || select.y == 32) {
        shadowOAM[description.oamIndex].attr0 = ATTR0_HIDE;
        shadowOAM[boost.oamIndex].attr0 = ATTR0_HIDE;
    } else {
        switch(allItems[index].itemType) {
        case LOLLY:
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_SMALL;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(20, 12);

            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_SQUARE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_TINY;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(24, 12);
            break;
            case PANCAKE:
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_LARGE;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(24, 15);

            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_SQUARE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_TINY;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(26, 12);
            break;
            case CAKE:
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_SMALL;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(12, 12);

            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_SQUARE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_TINY;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(26, 12);
            break;
            case BURGER:
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_SMALL;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(8, 12);

            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_SQUARE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_TINY;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(27, 12);
            
            break;
            case HEALTH_POTION:
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_LARGE;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(0, 15);

            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_WIDE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_TINY;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(28, 12);
            break;
            case DEFENSE_POTION:
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_LARGE;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(8, 15);

            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_WIDE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_SMALL;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(16, 12);
            break;
            case DAMAGE_POTION:
            shadowOAM[description.oamIndex].attr0 = ATTR0_Y(description.y) | ATTR0_WIDE;
            shadowOAM[description.oamIndex].attr1 = ATTR1_X(description.x) | ATTR1_LARGE;
            shadowOAM[description.oamIndex].attr2 = ATTR2_TILEID(16, 15);
            
            shadowOAM[boost.oamIndex].attr0 = ATTR0_Y(boost.y) | ATTR0_WIDE;
            shadowOAM[boost.oamIndex].attr1 = ATTR1_X(boost.x) | ATTR1_SMALL;
            shadowOAM[boost.oamIndex].attr2 = ATTR2_TILEID(16, 12);
            break;
        }
    }
    
}
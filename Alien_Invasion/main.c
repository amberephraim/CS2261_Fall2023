#include "gba.h"
#include "print.h"
#include "colors.h"
#include <time.h>
#include "analogSound.h"

void initialize();
void start();
void goToStart();
void game();
void goToGame();
void pause();
void goToPause();
void lose();
void goToLose();

unsigned short oldButtons;
unsigned short buttons;
int lives;

enum STATE {START, PAUSE, GAME, LOSE} state;

int main() {

    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;
        switch (state) {
        case START:
            start();
            break;
        case PAUSE:
            pause();
            break;
        case GAME:
            game();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

void initialize() {
    mgba_open();
    REG_DISPCTL = MODE(3) | BG2_ENABLE;
    initSound();
    
    oldButtons = 0;
    buttons = REG_BUTTONS;

    goToStart();
}

void goToStart() {
    fillScreen(DARK_BLUE);
    drawString(0, SCREENHEIGHT/2, "ALIEN INVASION", WHITE);
    drawString(0, SCREENHEIGHT/2 + 8, "Press START to begin", WHITE);
    state = START;
}

void start() {
 if (BUTTON_PRESSED(BUTTON_START)) {
    goToGame();
 }
}

void goToGame() {
    
    if (state == START) {
        initGame();
    } else {
        unpauseGame();
    }
    state = GAME;
}

void game() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        playAnalogSound(9);
        goToPause();
    } else {
        updateGame();
        if (lives == 0) {
            playAnalogSound(13);
            goToLose();
        } else {
            waitForVBlank();
            drawGame();
        }
    }
}

void goToPause() {
    fillScreen(LIGHT_PURPLE);
    drawString(0, SCREENHEIGHT/2, "Come back when you're ready", WHITE);
    state = PAUSE;
} 

void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        playAnalogSound(9);
        goToGame();
    }
}

void goToLose() {
    fillScreen(DARK_BLUE);
    drawString(0, SCREENHEIGHT/2, "You tried your best", WHITE);
    drawString(0, SCREENHEIGHT/2 + 8, "Play again?", WHITE);
    state = LOSE;
}

void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

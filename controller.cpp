//
// Created by 余将虎 on 2024/4/7.
//

#include "controller.h"
#include <iostream>

#ifdef _WIN32
#include <conio.h>
#else
#include <termios.h>
#endif

namespace ctl {
    void clear() {
//        printf("\x1B[1F\x1B[2K");
        printf("\x1B[2J");
    }

    void clearLine() {
        printf("\x1B[2K");
    }

    void setWindowSize(int row, int col) {
        printf("\x1B[8;%d;%dt", row, col);
    }

    void moveCursor(int x, int y) {
        printf("\x1B[%d;%dH", x, y);
    }

    void saveCursor() {
        printf("\x1B[s");
    }

    void restoreCursor() {
        printf("\x1B[u");
    }

    void setColor(int colorCode, bool backGround) {
        printf("\x1B[%dm", colorCode + (backGround ? 10 : 0));
    }

    void setColor(int r, int g, int b, bool backGround) {
        printf("\x1B[%d;2;%d;%d;%dm", 38 + (backGround ? 10 : 0), r, g, b);
    }

    void hideCursor() {
        printf("\x1B[?25l");
    }

    void showCursor() {
        printf("\x1B[?25h");
    }

#ifndef _WIN32
    char getch() {
        char c;
        struct termios old, cur;
        tcgetattr(0, &cur);
        old = cur;
        cfmakeraw(&cur);
        tcsetattr(0, 0, &cur);
        c = getchar();
        tcsetattr(0, 0, &old);
        return c;
    }
#else
    char getch() {
        return ::getch();
    }
#endif
}
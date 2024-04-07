#pragma once

enum Scene {
    SCENE_CHAT = 0,
    SCENE_MAP = 1,
    SCENE_GAME = 2
};

enum Command {
    CMD_CHAT = 1,
    CMD_PLAYER_MOVE = 2,
    CMD_PLAYER_JOIN = 3,
    CMD_PLAYER_EXIT = 4,
    CMD_ALL_PLAYERS = 5,
};

enum Key {
    KEY_QUIT = 'q',
    KEY_W = 'w',
    KEY_A = 'a',
    KEY_S = 's',
    KEY_D = 'd',
    KEY_ESC = 0x1B,
    KEY_BACKSPACE = 127,
    KEY_ENTER = 0x0D
};

enum FontColor {
    Black = 30,
    Red = 31,
    Green = 32,
    Yellow = 33,
    Blue = 34,
    Magenta = 35,
    Cyan = 36,
    White = 37,
    Default = 39,
    Reset = 0
};

namespace ctl {
    void clear();

    void clearLine();

    void setWindowSize(int row, int col);

    void moveCursor(int x, int y);

    void saveCursor();

    void restoreCursor();

    void saveScreen();

    void restoreScreen();

    void setColor(int colorCode, bool backGround = false);

    void setColor(int r, int g, int b, bool backGround = false);

    void hideCursor();
    void showCursor();

    char getch();
}
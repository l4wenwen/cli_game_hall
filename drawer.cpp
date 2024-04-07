//
// Created by 余将虎 on 2024/4/7.
//

/*
U+250x	─	━	│	┃	┄	┅	┆	┇	┈	┉	┊	┋	┌	┍	┎	┏
U+251x	┐	┑	┒	┓	└	┕	┖	┗	┘	┙	┚	┛	├	┝	┞	┟
U+252x	┠	┡	┢	┣	┤	┥	┦	┧	┨	┩	┪	┫	┬	┭	┮	┯
U+253x	┰	┱	┲	┳	┴	┵	┶	┷	┸	┹	┺	┻	┼	┽	┾	┿
U+254x	╀	╁	╂	╃	╄	╅	╆	╇	╈	╉	╊	╋	╌	╍	╎	╏
U+255x	═	║	╒	╓	╔	╕	╖	╗	╘	╙	╚	╛	╜	╝	╞	╟
U+256x	╠	╡	╢	╣	╤	╥	╦	╧	╨	╩	╪	╫	╬	╭	╮	╯
U+257x	╰	╱	╲	╳	╴	╵	╶	╷	╸	╹	╺	╻	╼	╽	╾	╿
*/

/*
┌─┐
└─┘
─│
└
短横─ = 2 * └
竖线│ = 2 * ─
*/

#include <iostream>
#include "drawer.h"
#include "controller.h"

namespace dw {
    int convert(int y) { return 2 * y - 1; }

    void box(int x, int y, int width, int height, const std::string& title) {
        ctl::moveCursor(x, convert(y));
        /* print header */
        printf(" ┌");
        for(int i = 0; i < width; i++) printf("──");
        printf("─");
        printf("┐ ");

        /* print title */
        if (!title.empty()) {
            int titleLen = title.size();
            if (titleLen < 2 * width + 2) {
                int spaceLeft = 2 * width + 4 - titleLen;
                ctl::moveCursor(x, convert(y) + spaceLeft / 2 + 1);
                printf("%s", title.c_str());
            }
        }
        /* print body */
        for(int i = 0; i < height; i++) {
            ctl::moveCursor(x + i + 1, convert(y) + 1);
            printf("│");
            ctl::moveCursor(x + i + 1, convert(y + width + 1) + 1);
            printf("│");
        }
        /* print footer */
        ctl::moveCursor(x + height + 1, convert(y));
        printf(" └");
        for(int i = 0; i < width; i++) printf("──");
        printf("─");
        printf("┘ ");
    }
}
#pragma once

#include <string>

namespace dw {
    int convert(int y);
    void box(int x, int y, int width, int height, const std::string& title = "");
}
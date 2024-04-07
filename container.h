//
// Created by 余将虎 on 2024/4/7.
//

#ifndef INC_2048_CONTAINER_H
#define INC_2048_CONTAINER_H

#include <string>
#include <utility>
#include "drawer.h"

class container {
public:
    container(int x, int y, int width, int height, std::string title)
        : locX_(x),
        locY_(y),
        width_(width),
        height_(height),
        title_(std::move(title)){}

    ~container() = default;

    void print() {
        dw::box(locX_, locY_, width_, height_, title_);
    }

    void setLoc(int x, int y) {
        locX_ = x;
        locY_ = y;
    }

    void setSize(int width, int height) {
        width_ = width;
        height_ = height;
    }

protected:
    int locX_;
    int locY_;
    int width_;
    int height_;

private:
    std::string title_;
};


#endif //INC_2048_CONTAINER_H

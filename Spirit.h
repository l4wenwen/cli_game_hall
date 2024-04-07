#pragma once

#include <string>

#include "controller.h"

class Spirit {
public:
    Spirit();

    explicit Spirit(int x, int y, int color, const std::string &name, uint64_t clientId);

    Spirit(const Spirit& rhs);

    Spirit& operator=(const Spirit& rhs) {
        if (this != &rhs) {
            locX_ = rhs.locX_;
            locY_ = rhs.locY_;
            name_ = rhs.name_;
            clientId_ = rhs.clientId_;
        }
        return *this;
    }

    void print(int nameColor = Blue) const;

    int getLocX() const { return locX_; }
    int getLocY() const { return locY_; }
    std::string getName() const { return name_; }

    void moveUp() { locX_ -= 1; }
    void moveDown() { locX_ += 1; };
    void moveLeft() { locY_ -= 2; };
    void moveRight() { locY_ += 2; };

    void setLocX(int x) { locX_ = x; }
    void setLocY(int y) { locY_ = y; }

    uint64_t getClientId() const { return clientId_; }

private:
    int locX_;
    int locY_;
    int color_{};
    std::string name_;
    uint64_t clientId_;
};
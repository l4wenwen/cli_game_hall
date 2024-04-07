//
// Created by 余将虎 on 2024/4/7.
//

#include "Spirit.h"
#include "controller.h"

Spirit::Spirit(int x, int y, int color, const std::string &name, unsigned long long clientId)
    : locX_(x),
    locY_(y),
    color_(color),
    name_(name),
    clientId_(clientId)
    { }

void Spirit::print(int nameColor) const {
    int nameLen = static_cast<int>(name_.size());
    ctl::moveCursor(locX_ - 1, locY_ - nameLen / 2);
    ctl::setColor(nameColor);
    printf("<%s>", name_.c_str());
    ctl::setColor(Reset);
    ctl::setColor(color_);
    ctl::moveCursor(locX_, locY_);
    printf("@");
    ctl::setColor(Reset);
}

Spirit::Spirit(const Spirit &rhs) {
    locX_ = rhs.locX_;
    locY_ = rhs.locY_;
    name_ = rhs.name_;
    clientId_ = rhs.clientId_;
}

Spirit::Spirit() {

}

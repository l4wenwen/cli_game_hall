#include "AreaMap.h"
#include "controller.h"

void AreaMap::printSpirits() {
    me_.print(Green);
    for(auto &spirit : spirits_) {
        spirit.second.print();
    }
}

void AreaMap::addPlayer(const Spirit& sp) {
    if (sp.getClientId() != me_.getClientId())
        spirits_[sp.getClientId()] = sp;
}

void AreaMap::removePlayer(uint64_t clientId) {
    spirits_.erase(clientId);
}

void AreaMap::keyBoardEventController_(char c) {
    bool moved = true;
    switch (c) {
        case KEY_QUIT:
            ctl::showCursor();
            exit(0);
        case KEY_W:
            if (me_.getLocX() - 1 > locX_)
                me_.moveUp();
            break;
        case KEY_A:
            if (me_.getLocY() - 2 > locY_ + 1)
                me_.moveLeft();
            break;
        case KEY_S:
            if (me_.getLocX() + 1 < locX_ + height_ + 1)
                me_.moveDown();
            break;
        case KEY_D:
            if (me_.getLocY() + 2 < locY_ + width_ * 2 + 2)
                me_.moveRight();
            break;
        default:
            moved = false;
            break;
    }
    if (moved) {
        char buf[64];
        snprintf(buf, sizeof buf, "%s %llu %d %d", me_.getName().c_str(), me_.getClientId(), me_.getLocX(), me_.getLocY());
        auto cli = net_.lock();
        if (cli != nullptr) {
            cli->setCmd(CMD_PLAYER_MOVE);
            cli->send(buf);
        }
    }
}

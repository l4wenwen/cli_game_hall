//
// Created by 余将虎 on 2024/4/7.
//

#include "Logic.h"

#include <utility>
#include "controller.h"
#include <cassert>

Logic::Logic()
    : ctlOwner_(SCENE_MAP)
    {}

void Logic::setOwner(int owner) {
    assert(owner < 3);
    ctlOwner_ = owner;
}

void Logic::execControl(char c) {
    if (ctls_[ctlOwner_])
        ctls_[ctlOwner_](c);
}

void Logic::setController(int id, const Logic::Controller &ctl) {
    assert(id < 3);
    ctls_[id] = ctl;
}

void Logic::drawInLoop() {
    if (drawers_[ctlOwner_])
        drawers_[ctlOwner_]();
}

void Logic::setDrawer(int id, const Logic::LoopDrawer &drawer) {
    assert(id < 3);
    drawers_[id] = drawer;
}

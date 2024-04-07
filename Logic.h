#pragma once

#include <functional>

class Logic {
public:
    typedef std::function<void(char c)> Controller;
    typedef std::function<void()> LoopDrawer;

    Logic();

    ~Logic() = default;

    void setOwner(int owner);

    int getOwner() { return ctlOwner_; }

    void execControl(char c);

    void setController(int id, const Controller& ctl);

    void setDrawer(int id, const LoopDrawer& drawer);

    void drawInLoop();

private:
    int ctlOwner_;  // 判断控制所有权(Chat, Map, 还是在Game中)
    std::array<Controller, 3> ctls_;
    std::array<LoopDrawer, 3> drawers_;
};
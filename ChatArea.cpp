//
// Created by 余将虎 on 2024/4/7.
//

#include "ChatArea.h"
#include "controller.h"
#include "TcpClient.h"

#include <thread>

ChatArea::ChatArea(const std::string& name, uint64_t clientId, int x, int y, int width, int height, std::string title, const TcpClient::TcpClientPtr& net)
        : name_(name),
        clientId_(clientId),
        container(x, y, width, height, std::move(title))
{
    net_ = net;
    inputPosX_ = 0;
    inputPosY_ = 0;
    ctl_ = std::bind(&ChatArea::keyBoardEventController_, this, std::placeholders::_1);
    drawer_ = std::bind(&ChatArea::loopDrawer_, this);
}


void ChatArea::setInputPos(int x, int y) {
    inputPosX_ = x;
    inputPosY_ = y;
}

void ChatArea::setCursorToInput() const {
    ctl::moveCursor(inputPosX_, inputPosY_);
}

void ChatArea::addMessage(const message &msg) {
    std::unique_lock<std::mutex> lock(mutex_);
    msgs_.push_back(msg);
}

int ChatArea::messageSize() {
    std::unique_lock<std::mutex> lock(mutex_);
    return msgs_.size();
}

void ChatArea::printMessage(int pageId) {
    std::unique_lock<std::mutex> lock(mutex_);
    int n = msgs_.size();
    for(int line = std::max(0, n - (height_)), cnt = 0; line < n; line++, cnt++) {
        ctl::moveCursor(locX_ + 1 + cnt, dw::convert(locY_) + 2);
        printf("%s", msgs_[line].c_str());
    }
}

void ChatArea::keyBoardEventController_(char c) {
    std::unique_lock<std::mutex> lock(mutex_);
    auto cli = net_.lock();
    if (cli == nullptr) {
        return;
    }
    switch (c) {
        case KEY_BACKSPACE:
            if (!inputBuffer_.empty())
                inputBuffer_.pop_back();
            break;
        case KEY_ENTER:
            cli->setCmd(CMD_CHAT);
            cli->send(name_ + "> " + inputBuffer_);
//            ctl::moveCursor(1, 1);
            std::string().swap(inputBuffer_);
            break;
        default:
            inputBuffer_.push_back(c);
            break;
    }
}

void ChatArea::loopDrawer_() {
    ctl::moveCursor(locX_ + height_ + 2, 1);
    printf("> ");
    ctl::moveCursor(locX_ + height_ + 2, 3);
    std::unique_lock<std::mutex> lock(mutex_);
    if (!inputBuffer_.empty()) {
        printf("%s", inputBuffer_.c_str());
        ctl::moveCursor(locX_ + height_ + 2, static_cast<int>(inputBuffer_.size()) + 3);
    }
}

void ChatArea::resetBuffer() {
    std::unique_lock<std::mutex> lock(mutex_);
    std::string().swap(inputBuffer_);
}


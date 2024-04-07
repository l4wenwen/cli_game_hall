#pragma once

#include "container.h"
#include "Logic.h"
#include "TcpClient.h"

#include <string>
#include <thread>
#include <vector>
#include <mutex>
#include <memory>


class ChatArea : public container {
public:
    typedef std::string message;
    typedef std::vector<message> messages;
    typedef std::function<void(char)> Controller;
    typedef std::function<void()> LoopDrawer;


    ChatArea(const std::string& name, uint64_t clientId, int x, int y, int width, int height, std::string title, const TcpClient::TcpClientPtr& net);

    ~ChatArea() = default;

    void setInputPos(int x, int y);

    void setCursorToInput() const;

    void addMessage(const message &msg);

    void resetBuffer();

    int messageSize();

    void printMessage(int pageId = -1);

    const Controller& getController() { return ctl_; }
    const LoopDrawer& getDrawer() { return drawer_; }

private:
    void keyBoardEventController_(char c);
    void loopDrawer_();

    std::string name_;
    uint64_t clientId_;

    int inputPosX_;
    int inputPosY_;
    message inputBuffer_;
    messages msgs_;

    std::mutex mutex_;

    std::weak_ptr<TcpClient> net_;

    Controller ctl_;
    LoopDrawer drawer_;
};
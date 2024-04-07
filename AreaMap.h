#pragma once

#include <memory>
#include <unordered_map>
#include "container.h"
#include "Spirit.h"
#include "Logic.h"
#include "controller.h"
#include "TcpClient.h"

class AreaMap : public container {
public:
    typedef std::function<void(char)> Controller;

    AreaMap(const std::string& name, uint64_t clientId,
            int x, int y, int width, int height, std::string title,
            const TcpClient::TcpClientPtr& net)
            : me_(x + height / 2, y + width, Blue, name, clientId),
            container(x, y, width, height, std::move(title)),
            net_(net)
    {
        char buf[64];
        snprintf(buf, sizeof buf, "%s %llu %d %d", name.c_str(), clientId, x + height / 2, y + width);
        net->setCmd(CMD_PLAYER_JOIN);
        net->send(buf);
        ctl_ = std::bind(&AreaMap::keyBoardEventController_, this, std::placeholders::_1);
    }

    ~AreaMap() = default;

    void printSpirits();

    void addPlayer(const Spirit& sp);

    void removePlayer(unsigned long long clientId);

    const Controller& getController() const { return ctl_; }
private:
    void keyBoardEventController_(char c);

    Spirit me_;

//    std::vector<Spirit> spirits_;
    std::unordered_map<unsigned long long, Spirit> spirits_;

    std::weak_ptr<TcpClient> net_;
    Controller ctl_;
};
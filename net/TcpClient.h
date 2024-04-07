#pragma once

#include "InetAddress.h"
#include "Socket.h"
#include "../controller.h"

#include <iostream>

class TcpClient {
public:
    typedef std::shared_ptr<TcpClient> TcpClientPtr;

    TcpClient(int port, const std::string& ip, uint64_t id)
    : socket(),
    peerAddr(port, ip),
    clientId_(id) {
        socket.connect(peerAddr.getSockAddr());
    }

    ~TcpClient() {
        std::cout << "Conn lose";
    };

    std::string read() {
        return socket.read();
    }

    int send(const std::string& msg) {
        return socket.send(std::string("/") + cmd_ + msg);
    }

    void setCmd(char cmd) {
        cmd_ = cmd;
    }
private:
    InetAddress peerAddr;
    Socket socket;
    char cmd_;
    uint64_t clientId_;
};
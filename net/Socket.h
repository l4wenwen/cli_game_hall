#pragma once

#include <sys/socket.h>
#include <netinet/in.h>
#include <string>

class InetAddress;

static int newSockFd() {
    int fd = socket(AF_INET, SOCK_STREAM, 0);
    return fd;
}

class Socket {
public:
    explicit Socket() : sockfd_(newSockFd()) {}

    ~Socket();

    int fd() const { return sockfd_; }
    void bindAddress(const InetAddress &localaddr);

    void connect(const sockaddr_in *addr) const;

    int send(const std::string& msg) const;

    std::string read() const;

private:
    const int sockfd_;
};


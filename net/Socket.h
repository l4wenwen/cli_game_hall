#pragma once
#include "InetAddress.h"
#ifndef _WIN32
#include <sys/socket.h>
#include <netinet/in.h>
#endif
#include <string>

static int newSockFd() {
#ifdef _WIN32
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        printf("Failed to initialize Winsock\n");
    }
#endif
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


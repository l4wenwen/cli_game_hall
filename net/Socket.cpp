#include "Socket.h"
#include "InetAddress.h"

#include <unistd.h>
#include <sys/types.h>
#include <strings.h>
#ifndef _WIN32
#include <sys/socket.h>
#include <netinet/tcp.h>
#endif

Socket::~Socket() {
    ::close(sockfd_);
}

void Socket::bindAddress(const InetAddress &localaddr) {
    if (0 != bind(sockfd_, reinterpret_cast<const sockaddr*>(localaddr.getSockAddr()), sizeof(sockaddr_in))) {
//        LOG_FATAL("bind sockfd:%d fail\n", sockfd_);
    }
}

void Socket::connect(const sockaddr_in *addr) const {
    if (::connect(sockfd_, reinterpret_cast<const sockaddr*>(addr), sizeof *addr) < 0) {

    }
}

int Socket::send(const std::string& msg) const {
    int total = msg.size(), sendBytes = 0;
    const char *buf = msg.c_str();
    while(sendBytes < total) {
        int n = static_cast<int>(::send(sockfd_, buf + sendBytes, total - sendBytes, 0));
        if (n < 0) exit(0);
        sendBytes += total;
    }
    return sendBytes;
}

std::string Socket::read() const {
    char buffer[1024] = {0};
#ifdef _WIN32
    ::recv(sockfd_, buffer, sizeof(buffer), 0);
#else
    ::read(sockfd_, buffer, sizeof(buffer));
#endif
    return buffer;
}

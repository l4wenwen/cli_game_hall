cmake_minimum_required(VERSION 3.27)
project(2048)

set(CMAKE_CXX_STANDARD 11)

include_directories(${PROJECT_SOURCE_DIR}/net)

add_executable(2048 main.cpp
        container.cpp
        drawer.cpp
        drawer.h
        controller.cpp
        controller.h
        net/TcpClient.cpp
        net/TcpClient.h
        net/Socket.cpp
        net/Socket.h
        net/InetAddress.cpp
        net/InetAddress.h
        AreaMap.cpp
        AreaMap.h
        Spirit.cpp
        Spirit.h
        Logic.cpp
        Logic.h
        ChatArea.cpp
        ChatArea.h
)

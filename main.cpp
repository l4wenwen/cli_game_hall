#include "controller.h"
#include "container.h"
#include "TcpClient.h"
#include "AreaMap.h"
#include "Logic.h"
#include "ChatArea.h"

#include <iostream>
#include <utility>
#include <thread>
#include <chrono>
#include <sstream>
#include <random>
#include <memory>

static uint64_t nrand() {
    std::mt19937 rng(std::random_device{}());
    std::uniform_int_distribution<unsigned long long> dist(0, std::numeric_limits<unsigned long long>::max());
    unsigned long long random_number = dist(rng);
    return random_number;
}

int main() {

#ifdef _WIN32
    HANDLE console = GetStdHandle(STD_OUTPUT_HANDLE);

    // 获取当前控制台的输出模式
    DWORD mode;
    GetConsoleMode(console, &mode);

    // 启用 ANSI 转义序列支持
    mode |= ENABLE_VIRTUAL_TERMINAL_PROCESSING;
    SetConsoleMode(console, mode);

    SetConsoleOutputCP(65001);

#endif


    std::string name;
    std::cout << "Please enter a name in English: ";
    std::getline(std::cin, name);
    uint64_t clientId = nrand();

    setbuf(stdout, NULL);
    ctl::clear();
    TcpClient::TcpClientPtr cli = std::make_shared<TcpClient>(8000, "47.96.85.146", clientId);
    int mapWidth = 37, mapHeight = 14;
    ChatArea chatArea(name, clientId, 17, 1, 37, 11, "ChatArea(Press ESC to Chat)", cli);
    AreaMap mainMap(name, clientId, 1, 1, 37, 14, "Map(Press q to quit)", cli);
    Logic gameLogic;
    gameLogic.setController(SCENE_CHAT, chatArea.getController());
    gameLogic.setController(SCENE_MAP, mainMap.getController());
    gameLogic.setDrawer(SCENE_CHAT, chatArea.getDrawer());
    ctl::hideCursor();
    gameLogic.setOwner(SCENE_MAP);

    chatArea.setInputPos(30, 3);
    chatArea.setCursorToInput();

    std::thread tread([&]{
        while(true) {
            std::string buf = cli->read();
            if (buf.size() < 2 || buf[0] != '/') {
                continue;
            }
            char op = buf[1];
            buf = buf.substr(2);
            if (op == CMD_CHAT) {
                chatArea.addMessage(buf);
            } else if (op == CMD_PLAYER_JOIN) {
                std::istringstream iss(buf);
                std::string name;
                int x, y, color;
                uint64_t id;
                iss >> name >> id >> x >> y;
                mainMap.addPlayer(Spirit(x, y, Red, name, id));
            } else if (op == CMD_ALL_PLAYERS) {
                std::istringstream iss(buf);
                int n;
                iss >> n;
                for(int i = 0; i < n; i++) {
                    std::string name;
                    int x, y, color;
                    uint64_t id;
                    iss >> name >> id >> x >> y;
                    if (id == clientId) continue;
                    mainMap.addPlayer(Spirit(x, y, Red, name, id));
                }
            } else if (op == CMD_PLAYER_MOVE) {
                std::istringstream iss(buf);
                std::string name;
                int x, y;
                uint64_t id;
                iss >> name >> id >> x >> y;
                if (id == clientId) continue;
                mainMap.addPlayer(Spirit(x, y, Red, name, id));
            } else if (op == CMD_PLAYER_EXIT) {
                std::istringstream iss(buf);
                uint64_t id;
                iss >> id;
                mainMap.removePlayer(id);
            }
        }
    });

    std::thread tKeyBoard([&]{
        while(true) {
            char c = ctl::getch();
            switch (c) {
                case KEY_ESC:
                    chatArea.resetBuffer();
                    if (gameLogic.getOwner() == SCENE_CHAT) {
                        ctl::hideCursor();
                    } else {
                        ctl::showCursor();
                    }
                    gameLogic.setOwner(1 - gameLogic.getOwner());
//                    exit(0);
                    break;
                default:
                    gameLogic.execControl(c);
                    break;
            }
        }
    });

    while(true) {
        ctl::setWindowSize(30, 80);
        ctl::clear();
        chatArea.print();
        mainMap.print();
        mainMap.printSpirits();
        chatArea.printMessage();

        gameLogic.drawInLoop();

        std::this_thread::sleep_for(std::chrono::milliseconds(40));
    }
    tread.join();
    tKeyBoard.join();
    return 0;
}

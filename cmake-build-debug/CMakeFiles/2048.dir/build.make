# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2023.3.4\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2023.3.4\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Projects\cli_game_hall

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Projects\cli_game_hall\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/2048.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/2048.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/2048.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2048.dir/flags.make

CMakeFiles/2048.dir/main.cpp.obj: CMakeFiles/2048.dir/flags.make
CMakeFiles/2048.dir/main.cpp.obj: CMakeFiles/2048.dir/includes_CXX.rsp
CMakeFiles/2048.dir/main.cpp.obj: C:/Projects/cli_game_hall/main.cpp
CMakeFiles/2048.dir/main.cpp.obj: CMakeFiles/2048.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2048.dir/main.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2048.dir/main.cpp.obj -MF CMakeFiles\2048.dir\main.cpp.obj.d -o CMakeFiles\2048.dir\main.cpp.obj -c C:\Projects\cli_game_hall\main.cpp

CMakeFiles/2048.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/2048.dir/main.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Projects\cli_game_hall\main.cpp > CMakeFiles\2048.dir\main.cpp.i

CMakeFiles/2048.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/2048.dir/main.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Projects\cli_game_hall\main.cpp -o CMakeFiles\2048.dir\main.cpp.s

CMakeFiles/2048.dir/container.cpp.obj: CMakeFiles/2048.dir/flags.make
CMakeFiles/2048.dir/container.cpp.obj: CMakeFiles/2048.dir/includes_CXX.rsp
CMakeFiles/2048.dir/container.cpp.obj: C:/Projects/cli_game_hall/container.cpp
CMakeFiles/2048.dir/container.cpp.obj: CMakeFiles/2048.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/2048.dir/container.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2048.dir/container.cpp.obj -MF CMakeFiles\2048.dir\container.cpp.obj.d -o CMakeFiles\2048.dir\container.cpp.obj -c C:\Projects\cli_game_hall\container.cpp

CMakeFiles/2048.dir/container.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/2048.dir/container.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Projects\cli_game_hall\container.cpp > CMakeFiles\2048.dir\container.cpp.i

CMakeFiles/2048.dir/container.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/2048.dir/container.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Projects\cli_game_hall\container.cpp -o CMakeFiles\2048.dir\container.cpp.s

CMakeFiles/2048.dir/drawer.cpp.obj: CMakeFiles/2048.dir/flags.make
CMakeFiles/2048.dir/drawer.cpp.obj: CMakeFiles/2048.dir/includes_CXX.rsp
CMakeFiles/2048.dir/drawer.cpp.obj: C:/Projects/cli_game_hall/drawer.cpp
CMakeFiles/2048.dir/drawer.cpp.obj: CMakeFiles/2048.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/2048.dir/drawer.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2048.dir/drawer.cpp.obj -MF CMakeFiles\2048.dir\drawer.cpp.obj.d -o CMakeFiles\2048.dir\drawer.cpp.obj -c C:\Projects\cli_game_hall\drawer.cpp

CMakeFiles/2048.dir/drawer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/2048.dir/drawer.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Projects\cli_game_hall\drawer.cpp > CMakeFiles\2048.dir\drawer.cpp.i

CMakeFiles/2048.dir/drawer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/2048.dir/drawer.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Projects\cli_game_hall\drawer.cpp -o CMakeFiles\2048.dir\drawer.cpp.s

CMakeFiles/2048.dir/controller.cpp.obj: CMakeFiles/2048.dir/flags.make
CMakeFiles/2048.dir/controller.cpp.obj: CMakeFiles/2048.dir/includes_CXX.rsp
CMakeFiles/2048.dir/controller.cpp.obj: C:/Projects/cli_game_hall/controller.cpp
CMakeFiles/2048.dir/controller.cpp.obj: CMakeFiles/2048.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/2048.dir/controller.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2048.dir/controller.cpp.obj -MF CMakeFiles\2048.dir\controller.cpp.obj.d -o CMakeFiles\2048.dir\controller.cpp.obj -c C:\Projects\cli_game_hall\controller.cpp

CMakeFiles/2048.dir/controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/2048.dir/controller.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Projects\cli_game_hall\controller.cpp > CMakeFiles\2048.dir\controller.cpp.i

CMakeFiles/2048.dir/controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/2048.dir/controller.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Projects\cli_game_hall\controller.cpp -o CMakeFiles\2048.dir\controller.cpp.s

CMakeFiles/2048.dir/net/TcpClient.cpp.obj: CMakeFiles/2048.dir/flags.make
CMakeFiles/2048.dir/net/TcpClient.cpp.obj: CMakeFiles/2048.dir/includes_CXX.rsp
CMakeFiles/2048.dir/net/TcpClient.cpp.obj: C:/Projects/cli_game_hall/net/TcpClient.cpp
CMakeFiles/2048.dir/net/TcpClient.cpp.obj: CMakeFiles/2048.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/2048.dir/net/TcpClient.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2048.dir/net/TcpClient.cpp.obj -MF CMakeFiles\2048.dir\net\TcpClient.cpp.obj.d -o CMakeFiles\2048.dir\net\TcpClient.cpp.obj -c C:\Projects\cli_game_hall\net\TcpClient.cpp

CMakeFiles/2048.dir/net/TcpClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/2048.dir/net/TcpClient.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Projects\cli_game_hall\net\TcpClient.cpp > CMakeFiles\2048.dir\net\TcpClient.cpp.i

CMakeFiles/2048.dir/net/TcpClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/2048.dir/net/TcpClient.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Projects\cli_game_hall\net\TcpClient.cpp -o CMakeFiles\2048.dir\net\TcpClient.cpp.s

CMakeFiles/2048.dir/net/Socket.cpp.obj: CMakeFiles/2048.dir/flags.make
CMakeFiles/2048.dir/net/Socket.cpp.obj: CMakeFiles/2048.dir/includes_CXX.rsp
CMakeFiles/2048.dir/net/Socket.cpp.obj: C:/Projects/cli_game_hall/net/Socket.cpp
CMakeFiles/2048.dir/net/Socket.cpp.obj: CMakeFiles/2048.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/2048.dir/net/Socket.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2048.dir/net/Socket.cpp.obj -MF CMakeFiles\2048.dir\net\Socket.cpp.obj.d -o CMakeFiles\2048.dir\net\Socket.cpp.obj -c C:\Projects\cli_game_hall\net\Socket.cpp

CMakeFiles/2048.dir/net/Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/2048.dir/net/Socket.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Projects\cli_game_hall\net\Socket.cpp > CMakeFiles\2048.dir\net\Socket.cpp.i

CMakeFiles/2048.dir/net/Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/2048.dir/net/Socket.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Projects\cli_game_hall\net\Socket.cpp -o CMakeFiles\2048.dir\net\Socket.cpp.s

CMakeFiles/2048.dir/net/InetAddress.cpp.obj: CMakeFiles/2048.dir/flags.make
CMakeFiles/2048.dir/net/InetAddress.cpp.obj: CMakeFiles/2048.dir/includes_CXX.rsp
CMakeFiles/2048.dir/net/InetAddress.cpp.obj: C:/Projects/cli_game_hall/net/InetAddress.cpp
CMakeFiles/2048.dir/net/InetAddress.cpp.obj: CMakeFiles/2048.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/2048.dir/net/InetAddress.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2048.dir/net/InetAddress.cpp.obj -MF CMakeFiles\2048.dir\net\InetAddress.cpp.obj.d -o CMakeFiles\2048.dir\net\InetAddress.cpp.obj -c C:\Projects\cli_game_hall\net\InetAddress.cpp

CMakeFiles/2048.dir/net/InetAddress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/2048.dir/net/InetAddress.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Projects\cli_game_hall\net\InetAddress.cpp > CMakeFiles\2048.dir\net\InetAddress.cpp.i

CMakeFiles/2048.dir/net/InetAddress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/2048.dir/net/InetAddress.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Projects\cli_game_hall\net\InetAddress.cpp -o CMakeFiles\2048.dir\net\InetAddress.cpp.s

CMakeFiles/2048.dir/AreaMap.cpp.obj: CMakeFiles/2048.dir/flags.make
CMakeFiles/2048.dir/AreaMap.cpp.obj: CMakeFiles/2048.dir/includes_CXX.rsp
CMakeFiles/2048.dir/AreaMap.cpp.obj: C:/Projects/cli_game_hall/AreaMap.cpp
CMakeFiles/2048.dir/AreaMap.cpp.obj: CMakeFiles/2048.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/2048.dir/AreaMap.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2048.dir/AreaMap.cpp.obj -MF CMakeFiles\2048.dir\AreaMap.cpp.obj.d -o CMakeFiles\2048.dir\AreaMap.cpp.obj -c C:\Projects\cli_game_hall\AreaMap.cpp

CMakeFiles/2048.dir/AreaMap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/2048.dir/AreaMap.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Projects\cli_game_hall\AreaMap.cpp > CMakeFiles\2048.dir\AreaMap.cpp.i

CMakeFiles/2048.dir/AreaMap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/2048.dir/AreaMap.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Projects\cli_game_hall\AreaMap.cpp -o CMakeFiles\2048.dir\AreaMap.cpp.s

CMakeFiles/2048.dir/Spirit.cpp.obj: CMakeFiles/2048.dir/flags.make
CMakeFiles/2048.dir/Spirit.cpp.obj: CMakeFiles/2048.dir/includes_CXX.rsp
CMakeFiles/2048.dir/Spirit.cpp.obj: C:/Projects/cli_game_hall/Spirit.cpp
CMakeFiles/2048.dir/Spirit.cpp.obj: CMakeFiles/2048.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/2048.dir/Spirit.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2048.dir/Spirit.cpp.obj -MF CMakeFiles\2048.dir\Spirit.cpp.obj.d -o CMakeFiles\2048.dir\Spirit.cpp.obj -c C:\Projects\cli_game_hall\Spirit.cpp

CMakeFiles/2048.dir/Spirit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/2048.dir/Spirit.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Projects\cli_game_hall\Spirit.cpp > CMakeFiles\2048.dir\Spirit.cpp.i

CMakeFiles/2048.dir/Spirit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/2048.dir/Spirit.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Projects\cli_game_hall\Spirit.cpp -o CMakeFiles\2048.dir\Spirit.cpp.s

CMakeFiles/2048.dir/Logic.cpp.obj: CMakeFiles/2048.dir/flags.make
CMakeFiles/2048.dir/Logic.cpp.obj: CMakeFiles/2048.dir/includes_CXX.rsp
CMakeFiles/2048.dir/Logic.cpp.obj: C:/Projects/cli_game_hall/Logic.cpp
CMakeFiles/2048.dir/Logic.cpp.obj: CMakeFiles/2048.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/2048.dir/Logic.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2048.dir/Logic.cpp.obj -MF CMakeFiles\2048.dir\Logic.cpp.obj.d -o CMakeFiles\2048.dir\Logic.cpp.obj -c C:\Projects\cli_game_hall\Logic.cpp

CMakeFiles/2048.dir/Logic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/2048.dir/Logic.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Projects\cli_game_hall\Logic.cpp > CMakeFiles\2048.dir\Logic.cpp.i

CMakeFiles/2048.dir/Logic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/2048.dir/Logic.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Projects\cli_game_hall\Logic.cpp -o CMakeFiles\2048.dir\Logic.cpp.s

CMakeFiles/2048.dir/ChatArea.cpp.obj: CMakeFiles/2048.dir/flags.make
CMakeFiles/2048.dir/ChatArea.cpp.obj: CMakeFiles/2048.dir/includes_CXX.rsp
CMakeFiles/2048.dir/ChatArea.cpp.obj: C:/Projects/cli_game_hall/ChatArea.cpp
CMakeFiles/2048.dir/ChatArea.cpp.obj: CMakeFiles/2048.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/2048.dir/ChatArea.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2048.dir/ChatArea.cpp.obj -MF CMakeFiles\2048.dir\ChatArea.cpp.obj.d -o CMakeFiles\2048.dir\ChatArea.cpp.obj -c C:\Projects\cli_game_hall\ChatArea.cpp

CMakeFiles/2048.dir/ChatArea.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/2048.dir/ChatArea.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Projects\cli_game_hall\ChatArea.cpp > CMakeFiles\2048.dir\ChatArea.cpp.i

CMakeFiles/2048.dir/ChatArea.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/2048.dir/ChatArea.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Projects\cli_game_hall\ChatArea.cpp -o CMakeFiles\2048.dir\ChatArea.cpp.s

# Object files for target 2048
2048_OBJECTS = \
"CMakeFiles/2048.dir/main.cpp.obj" \
"CMakeFiles/2048.dir/container.cpp.obj" \
"CMakeFiles/2048.dir/drawer.cpp.obj" \
"CMakeFiles/2048.dir/controller.cpp.obj" \
"CMakeFiles/2048.dir/net/TcpClient.cpp.obj" \
"CMakeFiles/2048.dir/net/Socket.cpp.obj" \
"CMakeFiles/2048.dir/net/InetAddress.cpp.obj" \
"CMakeFiles/2048.dir/AreaMap.cpp.obj" \
"CMakeFiles/2048.dir/Spirit.cpp.obj" \
"CMakeFiles/2048.dir/Logic.cpp.obj" \
"CMakeFiles/2048.dir/ChatArea.cpp.obj"

# External object files for target 2048
2048_EXTERNAL_OBJECTS =

2048.exe: CMakeFiles/2048.dir/main.cpp.obj
2048.exe: CMakeFiles/2048.dir/container.cpp.obj
2048.exe: CMakeFiles/2048.dir/drawer.cpp.obj
2048.exe: CMakeFiles/2048.dir/controller.cpp.obj
2048.exe: CMakeFiles/2048.dir/net/TcpClient.cpp.obj
2048.exe: CMakeFiles/2048.dir/net/Socket.cpp.obj
2048.exe: CMakeFiles/2048.dir/net/InetAddress.cpp.obj
2048.exe: CMakeFiles/2048.dir/AreaMap.cpp.obj
2048.exe: CMakeFiles/2048.dir/Spirit.cpp.obj
2048.exe: CMakeFiles/2048.dir/Logic.cpp.obj
2048.exe: CMakeFiles/2048.dir/ChatArea.cpp.obj
2048.exe: CMakeFiles/2048.dir/build.make
2048.exe: CMakeFiles/2048.dir/linkLibs.rsp
2048.exe: CMakeFiles/2048.dir/objects1.rsp
2048.exe: CMakeFiles/2048.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable 2048.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\2048.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2048.dir/build: 2048.exe
.PHONY : CMakeFiles/2048.dir/build

CMakeFiles/2048.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\2048.dir\cmake_clean.cmake
.PHONY : CMakeFiles/2048.dir/clean

CMakeFiles/2048.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Projects\cli_game_hall C:\Projects\cli_game_hall C:\Projects\cli_game_hall\cmake-build-debug C:\Projects\cli_game_hall\cmake-build-debug C:\Projects\cli_game_hall\cmake-build-debug\CMakeFiles\2048.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/2048.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/herokingsley/HER0_EV/network

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/herokingsley/HER0_EV/network

# Include any dependencies generated for this target.
include CMakeFiles/epoll_srv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/epoll_srv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/epoll_srv.dir/flags.make

CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o: CMakeFiles/epoll_srv.dir/flags.make
CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o: utest_epoll_server.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o -c /home/herokingsley/HER0_EV/network/utest_epoll_server.cpp

CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/utest_epoll_server.cpp > CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.i

CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/utest_epoll_server.cpp -o CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.s

CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o.requires:
.PHONY : CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o.requires

CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o.provides: CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o.requires
	$(MAKE) -f CMakeFiles/epoll_srv.dir/build.make CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o.provides.build
.PHONY : CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o.provides

CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o.provides.build: CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o

CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o: CMakeFiles/epoll_srv.dir/flags.make
CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o: utest_eventhandler.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o -c /home/herokingsley/HER0_EV/network/utest_eventhandler.cpp

CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/utest_eventhandler.cpp > CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.i

CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/utest_eventhandler.cpp -o CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.s

CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o.requires:
.PHONY : CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o.requires

CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o.provides: CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o.requires
	$(MAKE) -f CMakeFiles/epoll_srv.dir/build.make CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o.provides.build
.PHONY : CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o.provides

CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o.provides.build: CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o

CMakeFiles/epoll_srv.dir/Channel.cpp.o: CMakeFiles/epoll_srv.dir/flags.make
CMakeFiles/epoll_srv.dir/Channel.cpp.o: Channel.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/epoll_srv.dir/Channel.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/epoll_srv.dir/Channel.cpp.o -c /home/herokingsley/HER0_EV/network/Channel.cpp

CMakeFiles/epoll_srv.dir/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll_srv.dir/Channel.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/Channel.cpp > CMakeFiles/epoll_srv.dir/Channel.cpp.i

CMakeFiles/epoll_srv.dir/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll_srv.dir/Channel.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/Channel.cpp -o CMakeFiles/epoll_srv.dir/Channel.cpp.s

CMakeFiles/epoll_srv.dir/Channel.cpp.o.requires:
.PHONY : CMakeFiles/epoll_srv.dir/Channel.cpp.o.requires

CMakeFiles/epoll_srv.dir/Channel.cpp.o.provides: CMakeFiles/epoll_srv.dir/Channel.cpp.o.requires
	$(MAKE) -f CMakeFiles/epoll_srv.dir/build.make CMakeFiles/epoll_srv.dir/Channel.cpp.o.provides.build
.PHONY : CMakeFiles/epoll_srv.dir/Channel.cpp.o.provides

CMakeFiles/epoll_srv.dir/Channel.cpp.o.provides.build: CMakeFiles/epoll_srv.dir/Channel.cpp.o

CMakeFiles/epoll_srv.dir/EPoller.cpp.o: CMakeFiles/epoll_srv.dir/flags.make
CMakeFiles/epoll_srv.dir/EPoller.cpp.o: EPoller.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/epoll_srv.dir/EPoller.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/epoll_srv.dir/EPoller.cpp.o -c /home/herokingsley/HER0_EV/network/EPoller.cpp

CMakeFiles/epoll_srv.dir/EPoller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll_srv.dir/EPoller.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/EPoller.cpp > CMakeFiles/epoll_srv.dir/EPoller.cpp.i

CMakeFiles/epoll_srv.dir/EPoller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll_srv.dir/EPoller.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/EPoller.cpp -o CMakeFiles/epoll_srv.dir/EPoller.cpp.s

CMakeFiles/epoll_srv.dir/EPoller.cpp.o.requires:
.PHONY : CMakeFiles/epoll_srv.dir/EPoller.cpp.o.requires

CMakeFiles/epoll_srv.dir/EPoller.cpp.o.provides: CMakeFiles/epoll_srv.dir/EPoller.cpp.o.requires
	$(MAKE) -f CMakeFiles/epoll_srv.dir/build.make CMakeFiles/epoll_srv.dir/EPoller.cpp.o.provides.build
.PHONY : CMakeFiles/epoll_srv.dir/EPoller.cpp.o.provides

CMakeFiles/epoll_srv.dir/EPoller.cpp.o.provides.build: CMakeFiles/epoll_srv.dir/EPoller.cpp.o

CMakeFiles/epoll_srv.dir/EventHandler.cpp.o: CMakeFiles/epoll_srv.dir/flags.make
CMakeFiles/epoll_srv.dir/EventHandler.cpp.o: EventHandler.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/epoll_srv.dir/EventHandler.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/epoll_srv.dir/EventHandler.cpp.o -c /home/herokingsley/HER0_EV/network/EventHandler.cpp

CMakeFiles/epoll_srv.dir/EventHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll_srv.dir/EventHandler.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/EventHandler.cpp > CMakeFiles/epoll_srv.dir/EventHandler.cpp.i

CMakeFiles/epoll_srv.dir/EventHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll_srv.dir/EventHandler.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/EventHandler.cpp -o CMakeFiles/epoll_srv.dir/EventHandler.cpp.s

CMakeFiles/epoll_srv.dir/EventHandler.cpp.o.requires:
.PHONY : CMakeFiles/epoll_srv.dir/EventHandler.cpp.o.requires

CMakeFiles/epoll_srv.dir/EventHandler.cpp.o.provides: CMakeFiles/epoll_srv.dir/EventHandler.cpp.o.requires
	$(MAKE) -f CMakeFiles/epoll_srv.dir/build.make CMakeFiles/epoll_srv.dir/EventHandler.cpp.o.provides.build
.PHONY : CMakeFiles/epoll_srv.dir/EventHandler.cpp.o.provides

CMakeFiles/epoll_srv.dir/EventHandler.cpp.o.provides.build: CMakeFiles/epoll_srv.dir/EventHandler.cpp.o

CMakeFiles/epoll_srv.dir/HReactor.cpp.o: CMakeFiles/epoll_srv.dir/flags.make
CMakeFiles/epoll_srv.dir/HReactor.cpp.o: HReactor.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/epoll_srv.dir/HReactor.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/epoll_srv.dir/HReactor.cpp.o -c /home/herokingsley/HER0_EV/network/HReactor.cpp

CMakeFiles/epoll_srv.dir/HReactor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll_srv.dir/HReactor.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/HReactor.cpp > CMakeFiles/epoll_srv.dir/HReactor.cpp.i

CMakeFiles/epoll_srv.dir/HReactor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll_srv.dir/HReactor.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/HReactor.cpp -o CMakeFiles/epoll_srv.dir/HReactor.cpp.s

CMakeFiles/epoll_srv.dir/HReactor.cpp.o.requires:
.PHONY : CMakeFiles/epoll_srv.dir/HReactor.cpp.o.requires

CMakeFiles/epoll_srv.dir/HReactor.cpp.o.provides: CMakeFiles/epoll_srv.dir/HReactor.cpp.o.requires
	$(MAKE) -f CMakeFiles/epoll_srv.dir/build.make CMakeFiles/epoll_srv.dir/HReactor.cpp.o.provides.build
.PHONY : CMakeFiles/epoll_srv.dir/HReactor.cpp.o.provides

CMakeFiles/epoll_srv.dir/HReactor.cpp.o.provides.build: CMakeFiles/epoll_srv.dir/HReactor.cpp.o

CMakeFiles/epoll_srv.dir/IpPort.cpp.o: CMakeFiles/epoll_srv.dir/flags.make
CMakeFiles/epoll_srv.dir/IpPort.cpp.o: IpPort.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/epoll_srv.dir/IpPort.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/epoll_srv.dir/IpPort.cpp.o -c /home/herokingsley/HER0_EV/network/IpPort.cpp

CMakeFiles/epoll_srv.dir/IpPort.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll_srv.dir/IpPort.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/IpPort.cpp > CMakeFiles/epoll_srv.dir/IpPort.cpp.i

CMakeFiles/epoll_srv.dir/IpPort.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll_srv.dir/IpPort.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/IpPort.cpp -o CMakeFiles/epoll_srv.dir/IpPort.cpp.s

CMakeFiles/epoll_srv.dir/IpPort.cpp.o.requires:
.PHONY : CMakeFiles/epoll_srv.dir/IpPort.cpp.o.requires

CMakeFiles/epoll_srv.dir/IpPort.cpp.o.provides: CMakeFiles/epoll_srv.dir/IpPort.cpp.o.requires
	$(MAKE) -f CMakeFiles/epoll_srv.dir/build.make CMakeFiles/epoll_srv.dir/IpPort.cpp.o.provides.build
.PHONY : CMakeFiles/epoll_srv.dir/IpPort.cpp.o.provides

CMakeFiles/epoll_srv.dir/IpPort.cpp.o.provides.build: CMakeFiles/epoll_srv.dir/IpPort.cpp.o

CMakeFiles/epoll_srv.dir/PollerBase.cpp.o: CMakeFiles/epoll_srv.dir/flags.make
CMakeFiles/epoll_srv.dir/PollerBase.cpp.o: PollerBase.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/epoll_srv.dir/PollerBase.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/epoll_srv.dir/PollerBase.cpp.o -c /home/herokingsley/HER0_EV/network/PollerBase.cpp

CMakeFiles/epoll_srv.dir/PollerBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll_srv.dir/PollerBase.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/PollerBase.cpp > CMakeFiles/epoll_srv.dir/PollerBase.cpp.i

CMakeFiles/epoll_srv.dir/PollerBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll_srv.dir/PollerBase.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/PollerBase.cpp -o CMakeFiles/epoll_srv.dir/PollerBase.cpp.s

CMakeFiles/epoll_srv.dir/PollerBase.cpp.o.requires:
.PHONY : CMakeFiles/epoll_srv.dir/PollerBase.cpp.o.requires

CMakeFiles/epoll_srv.dir/PollerBase.cpp.o.provides: CMakeFiles/epoll_srv.dir/PollerBase.cpp.o.requires
	$(MAKE) -f CMakeFiles/epoll_srv.dir/build.make CMakeFiles/epoll_srv.dir/PollerBase.cpp.o.provides.build
.PHONY : CMakeFiles/epoll_srv.dir/PollerBase.cpp.o.provides

CMakeFiles/epoll_srv.dir/PollerBase.cpp.o.provides.build: CMakeFiles/epoll_srv.dir/PollerBase.cpp.o

CMakeFiles/epoll_srv.dir/Socket.cpp.o: CMakeFiles/epoll_srv.dir/flags.make
CMakeFiles/epoll_srv.dir/Socket.cpp.o: Socket.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/epoll_srv.dir/Socket.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/epoll_srv.dir/Socket.cpp.o -c /home/herokingsley/HER0_EV/network/Socket.cpp

CMakeFiles/epoll_srv.dir/Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll_srv.dir/Socket.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/Socket.cpp > CMakeFiles/epoll_srv.dir/Socket.cpp.i

CMakeFiles/epoll_srv.dir/Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll_srv.dir/Socket.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/Socket.cpp -o CMakeFiles/epoll_srv.dir/Socket.cpp.s

CMakeFiles/epoll_srv.dir/Socket.cpp.o.requires:
.PHONY : CMakeFiles/epoll_srv.dir/Socket.cpp.o.requires

CMakeFiles/epoll_srv.dir/Socket.cpp.o.provides: CMakeFiles/epoll_srv.dir/Socket.cpp.o.requires
	$(MAKE) -f CMakeFiles/epoll_srv.dir/build.make CMakeFiles/epoll_srv.dir/Socket.cpp.o.provides.build
.PHONY : CMakeFiles/epoll_srv.dir/Socket.cpp.o.provides

CMakeFiles/epoll_srv.dir/Socket.cpp.o.provides.build: CMakeFiles/epoll_srv.dir/Socket.cpp.o

CMakeFiles/epoll_srv.dir/TcpServer.cpp.o: CMakeFiles/epoll_srv.dir/flags.make
CMakeFiles/epoll_srv.dir/TcpServer.cpp.o: TcpServer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/epoll_srv.dir/TcpServer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/epoll_srv.dir/TcpServer.cpp.o -c /home/herokingsley/HER0_EV/network/TcpServer.cpp

CMakeFiles/epoll_srv.dir/TcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll_srv.dir/TcpServer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/TcpServer.cpp > CMakeFiles/epoll_srv.dir/TcpServer.cpp.i

CMakeFiles/epoll_srv.dir/TcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll_srv.dir/TcpServer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/TcpServer.cpp -o CMakeFiles/epoll_srv.dir/TcpServer.cpp.s

CMakeFiles/epoll_srv.dir/TcpServer.cpp.o.requires:
.PHONY : CMakeFiles/epoll_srv.dir/TcpServer.cpp.o.requires

CMakeFiles/epoll_srv.dir/TcpServer.cpp.o.provides: CMakeFiles/epoll_srv.dir/TcpServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/epoll_srv.dir/build.make CMakeFiles/epoll_srv.dir/TcpServer.cpp.o.provides.build
.PHONY : CMakeFiles/epoll_srv.dir/TcpServer.cpp.o.provides

CMakeFiles/epoll_srv.dir/TcpServer.cpp.o.provides.build: CMakeFiles/epoll_srv.dir/TcpServer.cpp.o

CMakeFiles/epoll_srv.dir/UdpServer.cpp.o: CMakeFiles/epoll_srv.dir/flags.make
CMakeFiles/epoll_srv.dir/UdpServer.cpp.o: UdpServer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/epoll_srv.dir/UdpServer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/epoll_srv.dir/UdpServer.cpp.o -c /home/herokingsley/HER0_EV/network/UdpServer.cpp

CMakeFiles/epoll_srv.dir/UdpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll_srv.dir/UdpServer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/UdpServer.cpp > CMakeFiles/epoll_srv.dir/UdpServer.cpp.i

CMakeFiles/epoll_srv.dir/UdpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll_srv.dir/UdpServer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/UdpServer.cpp -o CMakeFiles/epoll_srv.dir/UdpServer.cpp.s

CMakeFiles/epoll_srv.dir/UdpServer.cpp.o.requires:
.PHONY : CMakeFiles/epoll_srv.dir/UdpServer.cpp.o.requires

CMakeFiles/epoll_srv.dir/UdpServer.cpp.o.provides: CMakeFiles/epoll_srv.dir/UdpServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/epoll_srv.dir/build.make CMakeFiles/epoll_srv.dir/UdpServer.cpp.o.provides.build
.PHONY : CMakeFiles/epoll_srv.dir/UdpServer.cpp.o.provides

CMakeFiles/epoll_srv.dir/UdpServer.cpp.o.provides.build: CMakeFiles/epoll_srv.dir/UdpServer.cpp.o

# Object files for target epoll_srv
epoll_srv_OBJECTS = \
"CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o" \
"CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o" \
"CMakeFiles/epoll_srv.dir/Channel.cpp.o" \
"CMakeFiles/epoll_srv.dir/EPoller.cpp.o" \
"CMakeFiles/epoll_srv.dir/EventHandler.cpp.o" \
"CMakeFiles/epoll_srv.dir/HReactor.cpp.o" \
"CMakeFiles/epoll_srv.dir/IpPort.cpp.o" \
"CMakeFiles/epoll_srv.dir/PollerBase.cpp.o" \
"CMakeFiles/epoll_srv.dir/Socket.cpp.o" \
"CMakeFiles/epoll_srv.dir/TcpServer.cpp.o" \
"CMakeFiles/epoll_srv.dir/UdpServer.cpp.o"

# External object files for target epoll_srv
epoll_srv_EXTERNAL_OBJECTS =

epoll_srv: CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o
epoll_srv: CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o
epoll_srv: CMakeFiles/epoll_srv.dir/Channel.cpp.o
epoll_srv: CMakeFiles/epoll_srv.dir/EPoller.cpp.o
epoll_srv: CMakeFiles/epoll_srv.dir/EventHandler.cpp.o
epoll_srv: CMakeFiles/epoll_srv.dir/HReactor.cpp.o
epoll_srv: CMakeFiles/epoll_srv.dir/IpPort.cpp.o
epoll_srv: CMakeFiles/epoll_srv.dir/PollerBase.cpp.o
epoll_srv: CMakeFiles/epoll_srv.dir/Socket.cpp.o
epoll_srv: CMakeFiles/epoll_srv.dir/TcpServer.cpp.o
epoll_srv: CMakeFiles/epoll_srv.dir/UdpServer.cpp.o
epoll_srv: CMakeFiles/epoll_srv.dir/build.make
epoll_srv: CMakeFiles/epoll_srv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable epoll_srv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/epoll_srv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/epoll_srv.dir/build: epoll_srv
.PHONY : CMakeFiles/epoll_srv.dir/build

CMakeFiles/epoll_srv.dir/requires: CMakeFiles/epoll_srv.dir/utest_epoll_server.cpp.o.requires
CMakeFiles/epoll_srv.dir/requires: CMakeFiles/epoll_srv.dir/utest_eventhandler.cpp.o.requires
CMakeFiles/epoll_srv.dir/requires: CMakeFiles/epoll_srv.dir/Channel.cpp.o.requires
CMakeFiles/epoll_srv.dir/requires: CMakeFiles/epoll_srv.dir/EPoller.cpp.o.requires
CMakeFiles/epoll_srv.dir/requires: CMakeFiles/epoll_srv.dir/EventHandler.cpp.o.requires
CMakeFiles/epoll_srv.dir/requires: CMakeFiles/epoll_srv.dir/HReactor.cpp.o.requires
CMakeFiles/epoll_srv.dir/requires: CMakeFiles/epoll_srv.dir/IpPort.cpp.o.requires
CMakeFiles/epoll_srv.dir/requires: CMakeFiles/epoll_srv.dir/PollerBase.cpp.o.requires
CMakeFiles/epoll_srv.dir/requires: CMakeFiles/epoll_srv.dir/Socket.cpp.o.requires
CMakeFiles/epoll_srv.dir/requires: CMakeFiles/epoll_srv.dir/TcpServer.cpp.o.requires
CMakeFiles/epoll_srv.dir/requires: CMakeFiles/epoll_srv.dir/UdpServer.cpp.o.requires
.PHONY : CMakeFiles/epoll_srv.dir/requires

CMakeFiles/epoll_srv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/epoll_srv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/epoll_srv.dir/clean

CMakeFiles/epoll_srv.dir/depend:
	cd /home/herokingsley/HER0_EV/network && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/herokingsley/HER0_EV/network /home/herokingsley/HER0_EV/network /home/herokingsley/HER0_EV/network /home/herokingsley/HER0_EV/network /home/herokingsley/HER0_EV/network/CMakeFiles/epoll_srv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/epoll_srv.dir/depend


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
include CMakeFiles/cli.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cli.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cli.dir/flags.make

CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o: CMakeFiles/cli.dir/flags.make
CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o: utest_tcpsocket_cli.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o -c /home/herokingsley/HER0_EV/network/utest_tcpsocket_cli.cpp

CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/utest_tcpsocket_cli.cpp > CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.i

CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/utest_tcpsocket_cli.cpp -o CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.s

CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o.requires:
.PHONY : CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o.requires

CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o.provides: CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o.requires
	$(MAKE) -f CMakeFiles/cli.dir/build.make CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o.provides.build
.PHONY : CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o.provides

CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o.provides.build: CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o

CMakeFiles/cli.dir/eventhandler.cpp.o: CMakeFiles/cli.dir/flags.make
CMakeFiles/cli.dir/eventhandler.cpp.o: eventhandler.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cli.dir/eventhandler.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cli.dir/eventhandler.cpp.o -c /home/herokingsley/HER0_EV/network/eventhandler.cpp

CMakeFiles/cli.dir/eventhandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cli.dir/eventhandler.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/eventhandler.cpp > CMakeFiles/cli.dir/eventhandler.cpp.i

CMakeFiles/cli.dir/eventhandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cli.dir/eventhandler.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/eventhandler.cpp -o CMakeFiles/cli.dir/eventhandler.cpp.s

CMakeFiles/cli.dir/eventhandler.cpp.o.requires:
.PHONY : CMakeFiles/cli.dir/eventhandler.cpp.o.requires

CMakeFiles/cli.dir/eventhandler.cpp.o.provides: CMakeFiles/cli.dir/eventhandler.cpp.o.requires
	$(MAKE) -f CMakeFiles/cli.dir/build.make CMakeFiles/cli.dir/eventhandler.cpp.o.provides.build
.PHONY : CMakeFiles/cli.dir/eventhandler.cpp.o.provides

CMakeFiles/cli.dir/eventhandler.cpp.o.provides.build: CMakeFiles/cli.dir/eventhandler.cpp.o

CMakeFiles/cli.dir/hreactor.cpp.o: CMakeFiles/cli.dir/flags.make
CMakeFiles/cli.dir/hreactor.cpp.o: hreactor.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cli.dir/hreactor.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cli.dir/hreactor.cpp.o -c /home/herokingsley/HER0_EV/network/hreactor.cpp

CMakeFiles/cli.dir/hreactor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cli.dir/hreactor.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/hreactor.cpp > CMakeFiles/cli.dir/hreactor.cpp.i

CMakeFiles/cli.dir/hreactor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cli.dir/hreactor.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/hreactor.cpp -o CMakeFiles/cli.dir/hreactor.cpp.s

CMakeFiles/cli.dir/hreactor.cpp.o.requires:
.PHONY : CMakeFiles/cli.dir/hreactor.cpp.o.requires

CMakeFiles/cli.dir/hreactor.cpp.o.provides: CMakeFiles/cli.dir/hreactor.cpp.o.requires
	$(MAKE) -f CMakeFiles/cli.dir/build.make CMakeFiles/cli.dir/hreactor.cpp.o.provides.build
.PHONY : CMakeFiles/cli.dir/hreactor.cpp.o.provides

CMakeFiles/cli.dir/hreactor.cpp.o.provides.build: CMakeFiles/cli.dir/hreactor.cpp.o

CMakeFiles/cli.dir/socket.cpp.o: CMakeFiles/cli.dir/flags.make
CMakeFiles/cli.dir/socket.cpp.o: socket.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cli.dir/socket.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cli.dir/socket.cpp.o -c /home/herokingsley/HER0_EV/network/socket.cpp

CMakeFiles/cli.dir/socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cli.dir/socket.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/socket.cpp > CMakeFiles/cli.dir/socket.cpp.i

CMakeFiles/cli.dir/socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cli.dir/socket.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/socket.cpp -o CMakeFiles/cli.dir/socket.cpp.s

CMakeFiles/cli.dir/socket.cpp.o.requires:
.PHONY : CMakeFiles/cli.dir/socket.cpp.o.requires

CMakeFiles/cli.dir/socket.cpp.o.provides: CMakeFiles/cli.dir/socket.cpp.o.requires
	$(MAKE) -f CMakeFiles/cli.dir/build.make CMakeFiles/cli.dir/socket.cpp.o.provides.build
.PHONY : CMakeFiles/cli.dir/socket.cpp.o.provides

CMakeFiles/cli.dir/socket.cpp.o.provides.build: CMakeFiles/cli.dir/socket.cpp.o

CMakeFiles/cli.dir/ipport.cpp.o: CMakeFiles/cli.dir/flags.make
CMakeFiles/cli.dir/ipport.cpp.o: ipport.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/herokingsley/HER0_EV/network/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cli.dir/ipport.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cli.dir/ipport.cpp.o -c /home/herokingsley/HER0_EV/network/ipport.cpp

CMakeFiles/cli.dir/ipport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cli.dir/ipport.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/herokingsley/HER0_EV/network/ipport.cpp > CMakeFiles/cli.dir/ipport.cpp.i

CMakeFiles/cli.dir/ipport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cli.dir/ipport.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/herokingsley/HER0_EV/network/ipport.cpp -o CMakeFiles/cli.dir/ipport.cpp.s

CMakeFiles/cli.dir/ipport.cpp.o.requires:
.PHONY : CMakeFiles/cli.dir/ipport.cpp.o.requires

CMakeFiles/cli.dir/ipport.cpp.o.provides: CMakeFiles/cli.dir/ipport.cpp.o.requires
	$(MAKE) -f CMakeFiles/cli.dir/build.make CMakeFiles/cli.dir/ipport.cpp.o.provides.build
.PHONY : CMakeFiles/cli.dir/ipport.cpp.o.provides

CMakeFiles/cli.dir/ipport.cpp.o.provides.build: CMakeFiles/cli.dir/ipport.cpp.o

# Object files for target cli
cli_OBJECTS = \
"CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o" \
"CMakeFiles/cli.dir/eventhandler.cpp.o" \
"CMakeFiles/cli.dir/hreactor.cpp.o" \
"CMakeFiles/cli.dir/socket.cpp.o" \
"CMakeFiles/cli.dir/ipport.cpp.o"

# External object files for target cli
cli_EXTERNAL_OBJECTS =

cli: CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o
cli: CMakeFiles/cli.dir/eventhandler.cpp.o
cli: CMakeFiles/cli.dir/hreactor.cpp.o
cli: CMakeFiles/cli.dir/socket.cpp.o
cli: CMakeFiles/cli.dir/ipport.cpp.o
cli: CMakeFiles/cli.dir/build.make
cli: CMakeFiles/cli.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable cli"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cli.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cli.dir/build: cli
.PHONY : CMakeFiles/cli.dir/build

CMakeFiles/cli.dir/requires: CMakeFiles/cli.dir/utest_tcpsocket_cli.cpp.o.requires
CMakeFiles/cli.dir/requires: CMakeFiles/cli.dir/eventhandler.cpp.o.requires
CMakeFiles/cli.dir/requires: CMakeFiles/cli.dir/hreactor.cpp.o.requires
CMakeFiles/cli.dir/requires: CMakeFiles/cli.dir/socket.cpp.o.requires
CMakeFiles/cli.dir/requires: CMakeFiles/cli.dir/ipport.cpp.o.requires
.PHONY : CMakeFiles/cli.dir/requires

CMakeFiles/cli.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cli.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cli.dir/clean

CMakeFiles/cli.dir/depend:
	cd /home/herokingsley/HER0_EV/network && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/herokingsley/HER0_EV/network /home/herokingsley/HER0_EV/network /home/herokingsley/HER0_EV/network /home/herokingsley/HER0_EV/network /home/herokingsley/HER0_EV/network/CMakeFiles/cli.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cli.dir/depend


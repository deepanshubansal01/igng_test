# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/cmake-3.22.1-linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.22.1-linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/deepanshu/deepanshu/osrf/ignition_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/deepanshu/deepanshu/osrf/ignition_test/build/ignition_test

# Include any dependencies generated for this target.
include CMakeFiles/test_inertia.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_inertia.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_inertia.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_inertia.dir/flags.make

CMakeFiles/test_inertia.dir/test_inertia.cpp.o: CMakeFiles/test_inertia.dir/flags.make
CMakeFiles/test_inertia.dir/test_inertia.cpp.o: ../../test_inertia.cpp
CMakeFiles/test_inertia.dir/test_inertia.cpp.o: CMakeFiles/test_inertia.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/deepanshu/deepanshu/osrf/ignition_test/build/ignition_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_inertia.dir/test_inertia.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_inertia.dir/test_inertia.cpp.o -MF CMakeFiles/test_inertia.dir/test_inertia.cpp.o.d -o CMakeFiles/test_inertia.dir/test_inertia.cpp.o -c /home/deepanshu/deepanshu/osrf/ignition_test/test_inertia.cpp

CMakeFiles/test_inertia.dir/test_inertia.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_inertia.dir/test_inertia.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepanshu/deepanshu/osrf/ignition_test/test_inertia.cpp > CMakeFiles/test_inertia.dir/test_inertia.cpp.i

CMakeFiles/test_inertia.dir/test_inertia.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_inertia.dir/test_inertia.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepanshu/deepanshu/osrf/ignition_test/test_inertia.cpp -o CMakeFiles/test_inertia.dir/test_inertia.cpp.s

# Object files for target test_inertia
test_inertia_OBJECTS = \
"CMakeFiles/test_inertia.dir/test_inertia.cpp.o"

# External object files for target test_inertia
test_inertia_EXTERNAL_OBJECTS =

test_inertia: CMakeFiles/test_inertia.dir/test_inertia.cpp.o
test_inertia: CMakeFiles/test_inertia.dir/build.make
test_inertia: /usr/lib/x86_64-linux-gnu/libsdformat12.so.12.5.0
test_inertia: /usr/lib/x86_64-linux-gnu/libignition-math6.so.6.11.0
test_inertia: /usr/lib/x86_64-linux-gnu/libignition-utils1.so.1.4.0
test_inertia: CMakeFiles/test_inertia.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/deepanshu/deepanshu/osrf/ignition_test/build/ignition_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_inertia"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_inertia.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_inertia.dir/build: test_inertia
.PHONY : CMakeFiles/test_inertia.dir/build

CMakeFiles/test_inertia.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_inertia.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_inertia.dir/clean

CMakeFiles/test_inertia.dir/depend:
	cd /home/deepanshu/deepanshu/osrf/ignition_test/build/ignition_test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/deepanshu/deepanshu/osrf/ignition_test /home/deepanshu/deepanshu/osrf/ignition_test /home/deepanshu/deepanshu/osrf/ignition_test/build/ignition_test /home/deepanshu/deepanshu/osrf/ignition_test/build/ignition_test /home/deepanshu/deepanshu/osrf/ignition_test/build/ignition_test/CMakeFiles/test_inertia.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_inertia.dir/depend


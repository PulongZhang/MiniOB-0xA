# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/zpl/workspace/MiniOB-0xA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zpl/workspace/MiniOB-0xA/src

# Include any dependencies generated for this target.
include unitest/CMakeFiles/path_test.dir/depend.make

# Include the progress variables for this target.
include unitest/CMakeFiles/path_test.dir/progress.make

# Include the compile flags for this target's objects.
include unitest/CMakeFiles/path_test.dir/flags.make

unitest/CMakeFiles/path_test.dir/path_test.cpp.o: unitest/CMakeFiles/path_test.dir/flags.make
unitest/CMakeFiles/path_test.dir/path_test.cpp.o: ../unitest/path_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zpl/workspace/MiniOB-0xA/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unitest/CMakeFiles/path_test.dir/path_test.cpp.o"
	cd /home/zpl/workspace/MiniOB-0xA/src/unitest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/path_test.dir/path_test.cpp.o -c /home/zpl/workspace/MiniOB-0xA/unitest/path_test.cpp

unitest/CMakeFiles/path_test.dir/path_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/path_test.dir/path_test.cpp.i"
	cd /home/zpl/workspace/MiniOB-0xA/src/unitest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zpl/workspace/MiniOB-0xA/unitest/path_test.cpp > CMakeFiles/path_test.dir/path_test.cpp.i

unitest/CMakeFiles/path_test.dir/path_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/path_test.dir/path_test.cpp.s"
	cd /home/zpl/workspace/MiniOB-0xA/src/unitest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zpl/workspace/MiniOB-0xA/unitest/path_test.cpp -o CMakeFiles/path_test.dir/path_test.cpp.s

# Object files for target path_test
path_test_OBJECTS = \
"CMakeFiles/path_test.dir/path_test.cpp.o"

# External object files for target path_test
path_test_EXTERNAL_OBJECTS =

bin/path_test: unitest/CMakeFiles/path_test.dir/path_test.cpp.o
bin/path_test: unitest/CMakeFiles/path_test.dir/build.make
bin/path_test: lib/libobserver.a
bin/path_test: lib/libcommon.so.1.0.0
bin/path_test: unitest/CMakeFiles/path_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zpl/workspace/MiniOB-0xA/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/path_test"
	cd /home/zpl/workspace/MiniOB-0xA/src/unitest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/path_test.dir/link.txt --verbose=$(VERBOSE)
	cd /home/zpl/workspace/MiniOB-0xA/src/unitest && /usr/bin/cmake -D TEST_TARGET=path_test -D TEST_EXECUTABLE=/home/zpl/workspace/MiniOB-0xA/src/bin/path_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/zpl/workspace/MiniOB-0xA/src/unitest -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=path_test_TESTS -D CTEST_FILE=/home/zpl/workspace/MiniOB-0xA/src/unitest/path_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -P /usr/share/cmake-3.16/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
unitest/CMakeFiles/path_test.dir/build: bin/path_test

.PHONY : unitest/CMakeFiles/path_test.dir/build

unitest/CMakeFiles/path_test.dir/clean:
	cd /home/zpl/workspace/MiniOB-0xA/src/unitest && $(CMAKE_COMMAND) -P CMakeFiles/path_test.dir/cmake_clean.cmake
.PHONY : unitest/CMakeFiles/path_test.dir/clean

unitest/CMakeFiles/path_test.dir/depend:
	cd /home/zpl/workspace/MiniOB-0xA/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zpl/workspace/MiniOB-0xA /home/zpl/workspace/MiniOB-0xA/unitest /home/zpl/workspace/MiniOB-0xA/src /home/zpl/workspace/MiniOB-0xA/src/unitest /home/zpl/workspace/MiniOB-0xA/src/unitest/CMakeFiles/path_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unitest/CMakeFiles/path_test.dir/depend


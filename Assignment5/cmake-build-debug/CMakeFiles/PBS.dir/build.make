# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PBS.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PBS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PBS.dir/flags.make

CMakeFiles/PBS.dir/xv6/PBS.c.o: CMakeFiles/PBS.dir/flags.make
CMakeFiles/PBS.dir/xv6/PBS.c.o: ../xv6/PBS.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/PBS.dir/xv6/PBS.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/PBS.dir/xv6/PBS.c.o   -c /Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5/xv6/PBS.c

CMakeFiles/PBS.dir/xv6/PBS.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/PBS.dir/xv6/PBS.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5/xv6/PBS.c > CMakeFiles/PBS.dir/xv6/PBS.c.i

CMakeFiles/PBS.dir/xv6/PBS.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/PBS.dir/xv6/PBS.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5/xv6/PBS.c -o CMakeFiles/PBS.dir/xv6/PBS.c.s

# Object files for target PBS
PBS_OBJECTS = \
"CMakeFiles/PBS.dir/xv6/PBS.c.o"

# External object files for target PBS
PBS_EXTERNAL_OBJECTS =

PBS: CMakeFiles/PBS.dir/xv6/PBS.c.o
PBS: CMakeFiles/PBS.dir/build.make
PBS: CMakeFiles/PBS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable PBS"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PBS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PBS.dir/build: PBS

.PHONY : CMakeFiles/PBS.dir/build

CMakeFiles/PBS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PBS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PBS.dir/clean

CMakeFiles/PBS.dir/depend:
	cd /Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5 /Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5 /Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5/cmake-build-debug /Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5/cmake-build-debug /Users/forg1ven/Desktop/OS_Course_Assignments/Assignment5/cmake-build-debug/CMakeFiles/PBS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PBS.dir/depend

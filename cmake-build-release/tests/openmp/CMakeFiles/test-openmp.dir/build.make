# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/ilaria/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.6015.37/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/ilaria/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.6015.37/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release

# Include any dependencies generated for this target.
include tests/openmp/CMakeFiles/test-openmp.dir/depend.make

# Include the progress variables for this target.
include tests/openmp/CMakeFiles/test-openmp.dir/progress.make

# Include the compile flags for this target's objects.
include tests/openmp/CMakeFiles/test-openmp.dir/flags.make

tests/openmp/CMakeFiles/test-openmp.dir/main.cpp.o: tests/openmp/CMakeFiles/test-openmp.dir/flags.make
tests/openmp/CMakeFiles/test-openmp.dir/main.cpp.o: ../tests/openmp/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/openmp/CMakeFiles/test-openmp.dir/main.cpp.o"
	cd /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release/tests/openmp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-openmp.dir/main.cpp.o -c /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/tests/openmp/main.cpp

tests/openmp/CMakeFiles/test-openmp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-openmp.dir/main.cpp.i"
	cd /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release/tests/openmp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/tests/openmp/main.cpp > CMakeFiles/test-openmp.dir/main.cpp.i

tests/openmp/CMakeFiles/test-openmp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-openmp.dir/main.cpp.s"
	cd /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release/tests/openmp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/tests/openmp/main.cpp -o CMakeFiles/test-openmp.dir/main.cpp.s

# Object files for target test-openmp
test__openmp_OBJECTS = \
"CMakeFiles/test-openmp.dir/main.cpp.o"

# External object files for target test-openmp
test__openmp_EXTERNAL_OBJECTS =

tests/openmp/test-openmp: tests/openmp/CMakeFiles/test-openmp.dir/main.cpp.o
tests/openmp/test-openmp: tests/openmp/CMakeFiles/test-openmp.dir/build.make
tests/openmp/test-openmp: /usr/lib/gcc/x86_64-linux-gnu/8/libgomp.so
tests/openmp/test-openmp: tests/openmp/CMakeFiles/test-openmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-openmp"
	cd /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release/tests/openmp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-openmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/openmp/CMakeFiles/test-openmp.dir/build: tests/openmp/test-openmp

.PHONY : tests/openmp/CMakeFiles/test-openmp.dir/build

tests/openmp/CMakeFiles/test-openmp.dir/clean:
	cd /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release/tests/openmp && $(CMAKE_COMMAND) -P CMakeFiles/test-openmp.dir/cmake_clean.cmake
.PHONY : tests/openmp/CMakeFiles/test-openmp.dir/clean

tests/openmp/CMakeFiles/test-openmp.dir/depend:
	cd /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/tests/openmp /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release/tests/openmp /home/ilaria/Desktop/MultiComponents_SC/Multi_Components_GL/cmake-build-release/tests/openmp/CMakeFiles/test-openmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/openmp/CMakeFiles/test-openmp.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build

# Include any dependencies generated for this target.
include doc/examples/CMakeFiles/nullary_indexing.dir/depend.make

# Include the progress variables for this target.
include doc/examples/CMakeFiles/nullary_indexing.dir/progress.make

# Include the compile flags for this target's objects.
include doc/examples/CMakeFiles/nullary_indexing.dir/flags.make

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o: doc/examples/CMakeFiles/nullary_indexing.dir/flags.make
doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o: /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3/doc/examples/nullary_indexing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o"
	cd /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build/doc/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o -c /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3/doc/examples/nullary_indexing.cpp

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.i"
	cd /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3/doc/examples/nullary_indexing.cpp > CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.i

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.s"
	cd /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3/doc/examples/nullary_indexing.cpp -o CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.s

# Object files for target nullary_indexing
nullary_indexing_OBJECTS = \
"CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o"

# External object files for target nullary_indexing
nullary_indexing_EXTERNAL_OBJECTS =

doc/examples/nullary_indexing: doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o
doc/examples/nullary_indexing: doc/examples/CMakeFiles/nullary_indexing.dir/build.make
doc/examples/nullary_indexing: doc/examples/CMakeFiles/nullary_indexing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable nullary_indexing"
	cd /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nullary_indexing.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build/doc/examples && ./nullary_indexing >/home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build/doc/examples/nullary_indexing.out

# Rule to build all files generated by this target.
doc/examples/CMakeFiles/nullary_indexing.dir/build: doc/examples/nullary_indexing

.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/build

doc/examples/CMakeFiles/nullary_indexing.dir/clean:
	cd /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/nullary_indexing.dir/cmake_clean.cmake
.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/clean

doc/examples/CMakeFiles/nullary_indexing.dir/depend:
	cd /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3 /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3/doc/examples /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build/doc/examples /home/ilaria/Desktop/MultiComponents_SC/2Components_GL/build/Release/third-party-build/h5pp/src/external_h5pp-build/third-party-build/Eigen3/src/external_eigen3-build/doc/examples/CMakeFiles/nullary_indexing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/ubuntu/ccms/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/ccms/catkin_ws/build

# Include any dependencies generated for this target.
include ccms_pro/CMakeFiles/history_average_data.dir/depend.make

# Include the progress variables for this target.
include ccms_pro/CMakeFiles/history_average_data.dir/progress.make

# Include the compile flags for this target's objects.
include ccms_pro/CMakeFiles/history_average_data.dir/flags.make

ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o: ccms_pro/CMakeFiles/history_average_data.dir/flags.make
ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o: /home/ubuntu/ccms/catkin_ws/src/ccms_pro/src/history_average_data.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/ccms/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o"
	cd /home/ubuntu/ccms/catkin_ws/build/ccms_pro && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o -c /home/ubuntu/ccms/catkin_ws/src/ccms_pro/src/history_average_data.cpp

ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/history_average_data.dir/src/history_average_data.cpp.i"
	cd /home/ubuntu/ccms/catkin_ws/build/ccms_pro && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/ccms/catkin_ws/src/ccms_pro/src/history_average_data.cpp > CMakeFiles/history_average_data.dir/src/history_average_data.cpp.i

ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/history_average_data.dir/src/history_average_data.cpp.s"
	cd /home/ubuntu/ccms/catkin_ws/build/ccms_pro && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/ccms/catkin_ws/src/ccms_pro/src/history_average_data.cpp -o CMakeFiles/history_average_data.dir/src/history_average_data.cpp.s

ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o.requires:

.PHONY : ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o.requires

ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o.provides: ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o.requires
	$(MAKE) -f ccms_pro/CMakeFiles/history_average_data.dir/build.make ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o.provides.build
.PHONY : ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o.provides

ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o.provides.build: ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o


# Object files for target history_average_data
history_average_data_OBJECTS = \
"CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o"

# External object files for target history_average_data
history_average_data_EXTERNAL_OBJECTS =

/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: ccms_pro/CMakeFiles/history_average_data.dir/build.make
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /opt/ros/kinetic/lib/libroscpp.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /usr/lib/aarch64-linux-gnu/libboost_signals.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /opt/ros/kinetic/lib/librosconsole.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /opt/ros/kinetic/lib/librostime.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /opt/ros/kinetic/lib/libcpp_common.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so
/home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data: ccms_pro/CMakeFiles/history_average_data.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/ccms/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data"
	cd /home/ubuntu/ccms/catkin_ws/build/ccms_pro && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/history_average_data.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ccms_pro/CMakeFiles/history_average_data.dir/build: /home/ubuntu/ccms/catkin_ws/devel/lib/ccms_pro/history_average_data

.PHONY : ccms_pro/CMakeFiles/history_average_data.dir/build

ccms_pro/CMakeFiles/history_average_data.dir/requires: ccms_pro/CMakeFiles/history_average_data.dir/src/history_average_data.cpp.o.requires

.PHONY : ccms_pro/CMakeFiles/history_average_data.dir/requires

ccms_pro/CMakeFiles/history_average_data.dir/clean:
	cd /home/ubuntu/ccms/catkin_ws/build/ccms_pro && $(CMAKE_COMMAND) -P CMakeFiles/history_average_data.dir/cmake_clean.cmake
.PHONY : ccms_pro/CMakeFiles/history_average_data.dir/clean

ccms_pro/CMakeFiles/history_average_data.dir/depend:
	cd /home/ubuntu/ccms/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/ccms/catkin_ws/src /home/ubuntu/ccms/catkin_ws/src/ccms_pro /home/ubuntu/ccms/catkin_ws/build /home/ubuntu/ccms/catkin_ws/build/ccms_pro /home/ubuntu/ccms/catkin_ws/build/ccms_pro/CMakeFiles/history_average_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ccms_pro/CMakeFiles/history_average_data.dir/depend


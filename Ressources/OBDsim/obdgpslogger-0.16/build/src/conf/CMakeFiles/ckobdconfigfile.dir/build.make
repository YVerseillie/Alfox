# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/ocommeng/obdgpslogger-0.16

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ocommeng/obdgpslogger-0.16/build

# Include any dependencies generated for this target.
include src/conf/CMakeFiles/ckobdconfigfile.dir/depend.make

# Include the progress variables for this target.
include src/conf/CMakeFiles/ckobdconfigfile.dir/progress.make

# Include the compile flags for this target's objects.
include src/conf/CMakeFiles/ckobdconfigfile.dir/flags.make

src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o: src/conf/CMakeFiles/ckobdconfigfile.dir/flags.make
src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o: ../src/conf/obdconfigfile.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ocommeng/obdgpslogger-0.16/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/conf && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o   -c /home/ocommeng/obdgpslogger-0.16/src/conf/obdconfigfile.c

src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.i"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/conf && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ocommeng/obdgpslogger-0.16/src/conf/obdconfigfile.c > CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.i

src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.s"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/conf && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ocommeng/obdgpslogger-0.16/src/conf/obdconfigfile.c -o CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.s

src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o.requires:
.PHONY : src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o.requires

src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o.provides: src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o.requires
	$(MAKE) -f src/conf/CMakeFiles/ckobdconfigfile.dir/build.make src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o.provides.build
.PHONY : src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o.provides

src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o.provides.build: src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o

# Object files for target ckobdconfigfile
ckobdconfigfile_OBJECTS = \
"CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o"

# External object files for target ckobdconfigfile
ckobdconfigfile_EXTERNAL_OBJECTS =

src/conf/libckobdconfigfile.a: src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o
src/conf/libckobdconfigfile.a: src/conf/CMakeFiles/ckobdconfigfile.dir/build.make
src/conf/libckobdconfigfile.a: src/conf/CMakeFiles/ckobdconfigfile.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libckobdconfigfile.a"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/conf && $(CMAKE_COMMAND) -P CMakeFiles/ckobdconfigfile.dir/cmake_clean_target.cmake
	cd /home/ocommeng/obdgpslogger-0.16/build/src/conf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ckobdconfigfile.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/conf/CMakeFiles/ckobdconfigfile.dir/build: src/conf/libckobdconfigfile.a
.PHONY : src/conf/CMakeFiles/ckobdconfigfile.dir/build

src/conf/CMakeFiles/ckobdconfigfile.dir/requires: src/conf/CMakeFiles/ckobdconfigfile.dir/obdconfigfile.c.o.requires
.PHONY : src/conf/CMakeFiles/ckobdconfigfile.dir/requires

src/conf/CMakeFiles/ckobdconfigfile.dir/clean:
	cd /home/ocommeng/obdgpslogger-0.16/build/src/conf && $(CMAKE_COMMAND) -P CMakeFiles/ckobdconfigfile.dir/cmake_clean.cmake
.PHONY : src/conf/CMakeFiles/ckobdconfigfile.dir/clean

src/conf/CMakeFiles/ckobdconfigfile.dir/depend:
	cd /home/ocommeng/obdgpslogger-0.16/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ocommeng/obdgpslogger-0.16 /home/ocommeng/obdgpslogger-0.16/src/conf /home/ocommeng/obdgpslogger-0.16/build /home/ocommeng/obdgpslogger-0.16/build/src/conf /home/ocommeng/obdgpslogger-0.16/build/src/conf/CMakeFiles/ckobdconfigfile.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/conf/CMakeFiles/ckobdconfigfile.dir/depend


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
include src/repair/CMakeFiles/ckobdrepair.dir/depend.make

# Include the progress variables for this target.
include src/repair/CMakeFiles/ckobdrepair.dir/progress.make

# Include the compile flags for this target's objects.
include src/repair/CMakeFiles/ckobdrepair.dir/flags.make

src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o: src/repair/CMakeFiles/ckobdrepair.dir/flags.make
src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o: ../src/repair/obdrepair.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ocommeng/obdgpslogger-0.16/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/repair && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ckobdrepair.dir/obdrepair.c.o   -c /home/ocommeng/obdgpslogger-0.16/src/repair/obdrepair.c

src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ckobdrepair.dir/obdrepair.c.i"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/repair && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ocommeng/obdgpslogger-0.16/src/repair/obdrepair.c > CMakeFiles/ckobdrepair.dir/obdrepair.c.i

src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ckobdrepair.dir/obdrepair.c.s"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/repair && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ocommeng/obdgpslogger-0.16/src/repair/obdrepair.c -o CMakeFiles/ckobdrepair.dir/obdrepair.c.s

src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o.requires:
.PHONY : src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o.requires

src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o.provides: src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o.requires
	$(MAKE) -f src/repair/CMakeFiles/ckobdrepair.dir/build.make src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o.provides.build
.PHONY : src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o.provides

src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o.provides.build: src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o

# Object files for target ckobdrepair
ckobdrepair_OBJECTS = \
"CMakeFiles/ckobdrepair.dir/obdrepair.c.o"

# External object files for target ckobdrepair
ckobdrepair_EXTERNAL_OBJECTS =

src/repair/libckobdrepair.a: src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o
src/repair/libckobdrepair.a: src/repair/CMakeFiles/ckobdrepair.dir/build.make
src/repair/libckobdrepair.a: src/repair/CMakeFiles/ckobdrepair.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libckobdrepair.a"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/repair && $(CMAKE_COMMAND) -P CMakeFiles/ckobdrepair.dir/cmake_clean_target.cmake
	cd /home/ocommeng/obdgpslogger-0.16/build/src/repair && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ckobdrepair.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/repair/CMakeFiles/ckobdrepair.dir/build: src/repair/libckobdrepair.a
.PHONY : src/repair/CMakeFiles/ckobdrepair.dir/build

src/repair/CMakeFiles/ckobdrepair.dir/requires: src/repair/CMakeFiles/ckobdrepair.dir/obdrepair.c.o.requires
.PHONY : src/repair/CMakeFiles/ckobdrepair.dir/requires

src/repair/CMakeFiles/ckobdrepair.dir/clean:
	cd /home/ocommeng/obdgpslogger-0.16/build/src/repair && $(CMAKE_COMMAND) -P CMakeFiles/ckobdrepair.dir/cmake_clean.cmake
.PHONY : src/repair/CMakeFiles/ckobdrepair.dir/clean

src/repair/CMakeFiles/ckobdrepair.dir/depend:
	cd /home/ocommeng/obdgpslogger-0.16/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ocommeng/obdgpslogger-0.16 /home/ocommeng/obdgpslogger-0.16/src/repair /home/ocommeng/obdgpslogger-0.16/build /home/ocommeng/obdgpslogger-0.16/build/src/repair /home/ocommeng/obdgpslogger-0.16/build/src/repair/CMakeFiles/ckobdrepair.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/repair/CMakeFiles/ckobdrepair.dir/depend


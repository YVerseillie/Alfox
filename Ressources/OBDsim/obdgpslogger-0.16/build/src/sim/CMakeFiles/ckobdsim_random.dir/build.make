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
include src/sim/CMakeFiles/ckobdsim_random.dir/depend.make

# Include the progress variables for this target.
include src/sim/CMakeFiles/ckobdsim_random.dir/progress.make

# Include the compile flags for this target's objects.
include src/sim/CMakeFiles/ckobdsim_random.dir/flags.make

src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o: src/sim/CMakeFiles/ckobdsim_random.dir/flags.make
src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o: ../src/sim/generators/random/gen_random.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ocommeng/obdgpslogger-0.16/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/sim && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o   -c /home/ocommeng/obdgpslogger-0.16/src/sim/generators/random/gen_random.c

src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.i"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/sim && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ocommeng/obdgpslogger-0.16/src/sim/generators/random/gen_random.c > CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.i

src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.s"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/sim && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ocommeng/obdgpslogger-0.16/src/sim/generators/random/gen_random.c -o CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.s

src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o.requires:
.PHONY : src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o.requires

src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o.provides: src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o.requires
	$(MAKE) -f src/sim/CMakeFiles/ckobdsim_random.dir/build.make src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o.provides.build
.PHONY : src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o.provides

src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o.provides.build: src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o

# Object files for target ckobdsim_random
ckobdsim_random_OBJECTS = \
"CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o"

# External object files for target ckobdsim_random
ckobdsim_random_EXTERNAL_OBJECTS =

src/sim/libckobdsim_random.a: src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o
src/sim/libckobdsim_random.a: src/sim/CMakeFiles/ckobdsim_random.dir/build.make
src/sim/libckobdsim_random.a: src/sim/CMakeFiles/ckobdsim_random.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libckobdsim_random.a"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/sim && $(CMAKE_COMMAND) -P CMakeFiles/ckobdsim_random.dir/cmake_clean_target.cmake
	cd /home/ocommeng/obdgpslogger-0.16/build/src/sim && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ckobdsim_random.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/sim/CMakeFiles/ckobdsim_random.dir/build: src/sim/libckobdsim_random.a
.PHONY : src/sim/CMakeFiles/ckobdsim_random.dir/build

src/sim/CMakeFiles/ckobdsim_random.dir/requires: src/sim/CMakeFiles/ckobdsim_random.dir/generators/random/gen_random.c.o.requires
.PHONY : src/sim/CMakeFiles/ckobdsim_random.dir/requires

src/sim/CMakeFiles/ckobdsim_random.dir/clean:
	cd /home/ocommeng/obdgpslogger-0.16/build/src/sim && $(CMAKE_COMMAND) -P CMakeFiles/ckobdsim_random.dir/cmake_clean.cmake
.PHONY : src/sim/CMakeFiles/ckobdsim_random.dir/clean

src/sim/CMakeFiles/ckobdsim_random.dir/depend:
	cd /home/ocommeng/obdgpslogger-0.16/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ocommeng/obdgpslogger-0.16 /home/ocommeng/obdgpslogger-0.16/src/sim /home/ocommeng/obdgpslogger-0.16/build /home/ocommeng/obdgpslogger-0.16/build/src/sim /home/ocommeng/obdgpslogger-0.16/build/src/sim/CMakeFiles/ckobdsim_random.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/sim/CMakeFiles/ckobdsim_random.dir/depend


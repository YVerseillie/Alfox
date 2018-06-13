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
include src/csv/CMakeFiles/obd2csv.dir/depend.make

# Include the progress variables for this target.
include src/csv/CMakeFiles/obd2csv.dir/progress.make

# Include the compile flags for this target's objects.
include src/csv/CMakeFiles/obd2csv.dir/flags.make

src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o: src/csv/CMakeFiles/obd2csv.dir/flags.make
src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o: ../src/csv/obdgpscsv.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ocommeng/obdgpslogger-0.16/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/csv && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/obd2csv.dir/obdgpscsv.c.o   -c /home/ocommeng/obdgpslogger-0.16/src/csv/obdgpscsv.c

src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/obd2csv.dir/obdgpscsv.c.i"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/csv && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ocommeng/obdgpslogger-0.16/src/csv/obdgpscsv.c > CMakeFiles/obd2csv.dir/obdgpscsv.c.i

src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/obd2csv.dir/obdgpscsv.c.s"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/csv && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ocommeng/obdgpslogger-0.16/src/csv/obdgpscsv.c -o CMakeFiles/obd2csv.dir/obdgpscsv.c.s

src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o.requires:
.PHONY : src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o.requires

src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o.provides: src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o.requires
	$(MAKE) -f src/csv/CMakeFiles/obd2csv.dir/build.make src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o.provides.build
.PHONY : src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o.provides

src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o.provides.build: src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o

# Object files for target obd2csv
obd2csv_OBJECTS = \
"CMakeFiles/obd2csv.dir/obdgpscsv.c.o"

# External object files for target obd2csv
obd2csv_EXTERNAL_OBJECTS =

../bin/obd2csv: src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o
../bin/obd2csv: src/csv/CMakeFiles/obd2csv.dir/build.make
../bin/obd2csv: libs/sqlite3/libcksqlite.a
../bin/obd2csv: /usr/lib/x86_64-linux-gnu/libz.so
../bin/obd2csv: src/csv/CMakeFiles/obd2csv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../../bin/obd2csv"
	cd /home/ocommeng/obdgpslogger-0.16/build/src/csv && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obd2csv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/csv/CMakeFiles/obd2csv.dir/build: ../bin/obd2csv
.PHONY : src/csv/CMakeFiles/obd2csv.dir/build

src/csv/CMakeFiles/obd2csv.dir/requires: src/csv/CMakeFiles/obd2csv.dir/obdgpscsv.c.o.requires
.PHONY : src/csv/CMakeFiles/obd2csv.dir/requires

src/csv/CMakeFiles/obd2csv.dir/clean:
	cd /home/ocommeng/obdgpslogger-0.16/build/src/csv && $(CMAKE_COMMAND) -P CMakeFiles/obd2csv.dir/cmake_clean.cmake
.PHONY : src/csv/CMakeFiles/obd2csv.dir/clean

src/csv/CMakeFiles/obd2csv.dir/depend:
	cd /home/ocommeng/obdgpslogger-0.16/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ocommeng/obdgpslogger-0.16 /home/ocommeng/obdgpslogger-0.16/src/csv /home/ocommeng/obdgpslogger-0.16/build /home/ocommeng/obdgpslogger-0.16/build/src/csv /home/ocommeng/obdgpslogger-0.16/build/src/csv/CMakeFiles/obd2csv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/csv/CMakeFiles/obd2csv.dir/depend


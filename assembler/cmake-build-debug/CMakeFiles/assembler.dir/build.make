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
CMAKE_COMMAND = /cygdrive/c/Users/fouri/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/fouri/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/assembler.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/assembler.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/assembler.dir/flags.make

CMakeFiles/assembler.dir/main.c.o: CMakeFiles/assembler.dir/flags.make
CMakeFiles/assembler.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/assembler.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/assembler.dir/main.c.o   -c "/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler/main.c"

CMakeFiles/assembler.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/assembler.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler/main.c" > CMakeFiles/assembler.dir/main.c.i

CMakeFiles/assembler.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/assembler.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler/main.c" -o CMakeFiles/assembler.dir/main.c.s

# Object files for target assembler
assembler_OBJECTS = \
"CMakeFiles/assembler.dir/main.c.o"

# External object files for target assembler
assembler_EXTERNAL_OBJECTS =

assembler.exe: CMakeFiles/assembler.dir/main.c.o
assembler.exe: CMakeFiles/assembler.dir/build.make
assembler.exe: CMakeFiles/assembler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable assembler.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assembler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/assembler.dir/build: assembler.exe

.PHONY : CMakeFiles/assembler.dir/build

CMakeFiles/assembler.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/assembler.dir/cmake_clean.cmake
.PHONY : CMakeFiles/assembler.dir/clean

CMakeFiles/assembler.dir/depend:
	cd "/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler" "/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler" "/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler/cmake-build-debug" "/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler/cmake-build-debug" "/cygdrive/c/Users/fouri/Documents/Uni/Year 4/S1/EAS/Prac 3/EASP3/assembler/cmake-build-debug/CMakeFiles/assembler.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/assembler.dir/depend


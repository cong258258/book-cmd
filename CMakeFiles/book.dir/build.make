# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /mnt/c/book-cmd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/book-cmd

# Include any dependencies generated for this target.
include CMakeFiles/book.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/book.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/book.dir/flags.make

CMakeFiles/book.dir/main.cpp.o: CMakeFiles/book.dir/flags.make
CMakeFiles/book.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/book-cmd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/book.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/book.dir/main.cpp.o -c /mnt/c/book-cmd/main.cpp

CMakeFiles/book.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/book.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/book-cmd/main.cpp > CMakeFiles/book.dir/main.cpp.i

CMakeFiles/book.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/book.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/book-cmd/main.cpp -o CMakeFiles/book.dir/main.cpp.s

CMakeFiles/book.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/book.dir/main.cpp.o.requires

CMakeFiles/book.dir/main.cpp.o.provides: CMakeFiles/book.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/book.dir/build.make CMakeFiles/book.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/book.dir/main.cpp.o.provides

CMakeFiles/book.dir/main.cpp.o.provides.build: CMakeFiles/book.dir/main.cpp.o


CMakeFiles/book.dir/cmd.cpp.o: CMakeFiles/book.dir/flags.make
CMakeFiles/book.dir/cmd.cpp.o: cmd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/book-cmd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/book.dir/cmd.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/book.dir/cmd.cpp.o -c /mnt/c/book-cmd/cmd.cpp

CMakeFiles/book.dir/cmd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/book.dir/cmd.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/book-cmd/cmd.cpp > CMakeFiles/book.dir/cmd.cpp.i

CMakeFiles/book.dir/cmd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/book.dir/cmd.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/book-cmd/cmd.cpp -o CMakeFiles/book.dir/cmd.cpp.s

CMakeFiles/book.dir/cmd.cpp.o.requires:

.PHONY : CMakeFiles/book.dir/cmd.cpp.o.requires

CMakeFiles/book.dir/cmd.cpp.o.provides: CMakeFiles/book.dir/cmd.cpp.o.requires
	$(MAKE) -f CMakeFiles/book.dir/build.make CMakeFiles/book.dir/cmd.cpp.o.provides.build
.PHONY : CMakeFiles/book.dir/cmd.cpp.o.provides

CMakeFiles/book.dir/cmd.cpp.o.provides.build: CMakeFiles/book.dir/cmd.cpp.o


CMakeFiles/book.dir/user_man.cpp.o: CMakeFiles/book.dir/flags.make
CMakeFiles/book.dir/user_man.cpp.o: user_man.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/book-cmd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/book.dir/user_man.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/book.dir/user_man.cpp.o -c /mnt/c/book-cmd/user_man.cpp

CMakeFiles/book.dir/user_man.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/book.dir/user_man.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/book-cmd/user_man.cpp > CMakeFiles/book.dir/user_man.cpp.i

CMakeFiles/book.dir/user_man.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/book.dir/user_man.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/book-cmd/user_man.cpp -o CMakeFiles/book.dir/user_man.cpp.s

CMakeFiles/book.dir/user_man.cpp.o.requires:

.PHONY : CMakeFiles/book.dir/user_man.cpp.o.requires

CMakeFiles/book.dir/user_man.cpp.o.provides: CMakeFiles/book.dir/user_man.cpp.o.requires
	$(MAKE) -f CMakeFiles/book.dir/build.make CMakeFiles/book.dir/user_man.cpp.o.provides.build
.PHONY : CMakeFiles/book.dir/user_man.cpp.o.provides

CMakeFiles/book.dir/user_man.cpp.o.provides.build: CMakeFiles/book.dir/user_man.cpp.o


CMakeFiles/book.dir/book_man.cpp.o: CMakeFiles/book.dir/flags.make
CMakeFiles/book.dir/book_man.cpp.o: book_man.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/book-cmd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/book.dir/book_man.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/book.dir/book_man.cpp.o -c /mnt/c/book-cmd/book_man.cpp

CMakeFiles/book.dir/book_man.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/book.dir/book_man.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/book-cmd/book_man.cpp > CMakeFiles/book.dir/book_man.cpp.i

CMakeFiles/book.dir/book_man.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/book.dir/book_man.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/book-cmd/book_man.cpp -o CMakeFiles/book.dir/book_man.cpp.s

CMakeFiles/book.dir/book_man.cpp.o.requires:

.PHONY : CMakeFiles/book.dir/book_man.cpp.o.requires

CMakeFiles/book.dir/book_man.cpp.o.provides: CMakeFiles/book.dir/book_man.cpp.o.requires
	$(MAKE) -f CMakeFiles/book.dir/build.make CMakeFiles/book.dir/book_man.cpp.o.provides.build
.PHONY : CMakeFiles/book.dir/book_man.cpp.o.provides

CMakeFiles/book.dir/book_man.cpp.o.provides.build: CMakeFiles/book.dir/book_man.cpp.o


CMakeFiles/book.dir/ui_control.cpp.o: CMakeFiles/book.dir/flags.make
CMakeFiles/book.dir/ui_control.cpp.o: ui_control.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/book-cmd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/book.dir/ui_control.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/book.dir/ui_control.cpp.o -c /mnt/c/book-cmd/ui_control.cpp

CMakeFiles/book.dir/ui_control.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/book.dir/ui_control.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/book-cmd/ui_control.cpp > CMakeFiles/book.dir/ui_control.cpp.i

CMakeFiles/book.dir/ui_control.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/book.dir/ui_control.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/book-cmd/ui_control.cpp -o CMakeFiles/book.dir/ui_control.cpp.s

CMakeFiles/book.dir/ui_control.cpp.o.requires:

.PHONY : CMakeFiles/book.dir/ui_control.cpp.o.requires

CMakeFiles/book.dir/ui_control.cpp.o.provides: CMakeFiles/book.dir/ui_control.cpp.o.requires
	$(MAKE) -f CMakeFiles/book.dir/build.make CMakeFiles/book.dir/ui_control.cpp.o.provides.build
.PHONY : CMakeFiles/book.dir/ui_control.cpp.o.provides

CMakeFiles/book.dir/ui_control.cpp.o.provides.build: CMakeFiles/book.dir/ui_control.cpp.o


CMakeFiles/book.dir/file_control.cpp.o: CMakeFiles/book.dir/flags.make
CMakeFiles/book.dir/file_control.cpp.o: file_control.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/book-cmd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/book.dir/file_control.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/book.dir/file_control.cpp.o -c /mnt/c/book-cmd/file_control.cpp

CMakeFiles/book.dir/file_control.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/book.dir/file_control.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/book-cmd/file_control.cpp > CMakeFiles/book.dir/file_control.cpp.i

CMakeFiles/book.dir/file_control.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/book.dir/file_control.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/book-cmd/file_control.cpp -o CMakeFiles/book.dir/file_control.cpp.s

CMakeFiles/book.dir/file_control.cpp.o.requires:

.PHONY : CMakeFiles/book.dir/file_control.cpp.o.requires

CMakeFiles/book.dir/file_control.cpp.o.provides: CMakeFiles/book.dir/file_control.cpp.o.requires
	$(MAKE) -f CMakeFiles/book.dir/build.make CMakeFiles/book.dir/file_control.cpp.o.provides.build
.PHONY : CMakeFiles/book.dir/file_control.cpp.o.provides

CMakeFiles/book.dir/file_control.cpp.o.provides.build: CMakeFiles/book.dir/file_control.cpp.o


# Object files for target book
book_OBJECTS = \
"CMakeFiles/book.dir/main.cpp.o" \
"CMakeFiles/book.dir/cmd.cpp.o" \
"CMakeFiles/book.dir/user_man.cpp.o" \
"CMakeFiles/book.dir/book_man.cpp.o" \
"CMakeFiles/book.dir/ui_control.cpp.o" \
"CMakeFiles/book.dir/file_control.cpp.o"

# External object files for target book
book_EXTERNAL_OBJECTS =

book: CMakeFiles/book.dir/main.cpp.o
book: CMakeFiles/book.dir/cmd.cpp.o
book: CMakeFiles/book.dir/user_man.cpp.o
book: CMakeFiles/book.dir/book_man.cpp.o
book: CMakeFiles/book.dir/ui_control.cpp.o
book: CMakeFiles/book.dir/file_control.cpp.o
book: CMakeFiles/book.dir/build.make
book: CMakeFiles/book.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/book-cmd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable book"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/book.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/book.dir/build: book

.PHONY : CMakeFiles/book.dir/build

CMakeFiles/book.dir/requires: CMakeFiles/book.dir/main.cpp.o.requires
CMakeFiles/book.dir/requires: CMakeFiles/book.dir/cmd.cpp.o.requires
CMakeFiles/book.dir/requires: CMakeFiles/book.dir/user_man.cpp.o.requires
CMakeFiles/book.dir/requires: CMakeFiles/book.dir/book_man.cpp.o.requires
CMakeFiles/book.dir/requires: CMakeFiles/book.dir/ui_control.cpp.o.requires
CMakeFiles/book.dir/requires: CMakeFiles/book.dir/file_control.cpp.o.requires

.PHONY : CMakeFiles/book.dir/requires

CMakeFiles/book.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/book.dir/cmake_clean.cmake
.PHONY : CMakeFiles/book.dir/clean

CMakeFiles/book.dir/depend:
	cd /mnt/c/book-cmd && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/book-cmd /mnt/c/book-cmd /mnt/c/book-cmd /mnt/c/book-cmd /mnt/c/book-cmd/CMakeFiles/book.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/book.dir/depend


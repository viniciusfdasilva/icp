# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/cmake/bin/cmake

# The command to remove a file.
RM = /opt/cmake/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vinicius/ipc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vinicius/ipc

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	/opt/cmake/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/opt/cmake/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/vinicius/ipc/CMakeFiles /home/vinicius/ipc//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/vinicius/ipc/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named ./bin/kmain

# Build rule for target.
./bin/kmain: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ./bin/kmain
.PHONY : ./bin/kmain

# fast build rule for target.
./bin/kmain/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/build
.PHONY : ./bin/kmain/fast

src/ipc.o: src/ipc.c.o
.PHONY : src/ipc.o

# target to build an object file
src/ipc.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/ipc.c.o
.PHONY : src/ipc.c.o

src/ipc.i: src/ipc.c.i
.PHONY : src/ipc.i

# target to preprocess a source file
src/ipc.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/ipc.c.i
.PHONY : src/ipc.c.i

src/ipc.s: src/ipc.c.s
.PHONY : src/ipc.s

# target to generate assembly for a file
src/ipc.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/ipc.c.s
.PHONY : src/ipc.c.s

src/kmain.o: src/kmain.c.o
.PHONY : src/kmain.o

# target to build an object file
src/kmain.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/kmain.c.o
.PHONY : src/kmain.c.o

src/kmain.i: src/kmain.c.i
.PHONY : src/kmain.i

# target to preprocess a source file
src/kmain.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/kmain.c.i
.PHONY : src/kmain.c.i

src/kmain.s: src/kmain.c.s
.PHONY : src/kmain.s

# target to generate assembly for a file
src/kmain.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/kmain.c.s
.PHONY : src/kmain.c.s

src/pm.o: src/pm.c.o
.PHONY : src/pm.o

# target to build an object file
src/pm.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/pm.c.o
.PHONY : src/pm.c.o

src/pm.i: src/pm.c.i
.PHONY : src/pm.i

# target to preprocess a source file
src/pm.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/pm.c.i
.PHONY : src/pm.c.i

src/pm.s: src/pm.c.s
.PHONY : src/pm.s

# target to generate assembly for a file
src/pm.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/pm.c.s
.PHONY : src/pm.c.s

src/process.o: src/process.c.o
.PHONY : src/process.o

# target to build an object file
src/process.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/process.c.o
.PHONY : src/process.c.o

src/process.i: src/process.c.i
.PHONY : src/process.i

# target to preprocess a source file
src/process.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/process.c.i
.PHONY : src/process.c.i

src/process.s: src/process.c.s
.PHONY : src/process.s

# target to generate assembly for a file
src/process.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/process.c.s
.PHONY : src/process.c.s

src/semaphore.o: src/semaphore.c.o
.PHONY : src/semaphore.o

# target to build an object file
src/semaphore.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/semaphore.c.o
.PHONY : src/semaphore.c.o

src/semaphore.i: src/semaphore.c.i
.PHONY : src/semaphore.i

# target to preprocess a source file
src/semaphore.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/semaphore.c.i
.PHONY : src/semaphore.c.i

src/semaphore.s: src/semaphore.c.s
.PHONY : src/semaphore.s

# target to generate assembly for a file
src/semaphore.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/semaphore.c.s
.PHONY : src/semaphore.c.s

src/shm.o: src/shm.c.o
.PHONY : src/shm.o

# target to build an object file
src/shm.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/shm.c.o
.PHONY : src/shm.c.o

src/shm.i: src/shm.c.i
.PHONY : src/shm.i

# target to preprocess a source file
src/shm.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/shm.c.i
.PHONY : src/shm.c.i

src/shm.s: src/shm.c.s
.PHONY : src/shm.s

# target to generate assembly for a file
src/shm.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/./bin/kmain.dir/build.make CMakeFiles/./bin/kmain.dir/src/shm.c.s
.PHONY : src/shm.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... ./bin/kmain"
	@echo "... src/ipc.o"
	@echo "... src/ipc.i"
	@echo "... src/ipc.s"
	@echo "... src/kmain.o"
	@echo "... src/kmain.i"
	@echo "... src/kmain.s"
	@echo "... src/pm.o"
	@echo "... src/pm.i"
	@echo "... src/pm.s"
	@echo "... src/process.o"
	@echo "... src/process.i"
	@echo "... src/process.s"
	@echo "... src/semaphore.o"
	@echo "... src/semaphore.i"
	@echo "... src/semaphore.s"
	@echo "... src/shm.o"
	@echo "... src/shm.i"
	@echo "... src/shm.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build

# Include any dependencies generated for this target.
include CMakeFiles/SteganographyFrontend.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SteganographyFrontend.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SteganographyFrontend.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SteganographyFrontend.dir/flags.make

CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.o: CMakeFiles/SteganographyFrontend.dir/flags.make
CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.o: /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/src/encode_decode.cpp
CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.o: CMakeFiles/SteganographyFrontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.o -MF CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.o.d -o CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.o -c /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/src/encode_decode.cpp

CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/src/encode_decode.cpp > CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.i

CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/src/encode_decode.cpp -o CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.s

CMakeFiles/SteganographyFrontend.dir/src/main.cpp.o: CMakeFiles/SteganographyFrontend.dir/flags.make
CMakeFiles/SteganographyFrontend.dir/src/main.cpp.o: /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/src/main.cpp
CMakeFiles/SteganographyFrontend.dir/src/main.cpp.o: CMakeFiles/SteganographyFrontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SteganographyFrontend.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SteganographyFrontend.dir/src/main.cpp.o -MF CMakeFiles/SteganographyFrontend.dir/src/main.cpp.o.d -o CMakeFiles/SteganographyFrontend.dir/src/main.cpp.o -c /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/src/main.cpp

CMakeFiles/SteganographyFrontend.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SteganographyFrontend.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/src/main.cpp > CMakeFiles/SteganographyFrontend.dir/src/main.cpp.i

CMakeFiles/SteganographyFrontend.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SteganographyFrontend.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/src/main.cpp -o CMakeFiles/SteganographyFrontend.dir/src/main.cpp.s

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.o: CMakeFiles/SteganographyFrontend.dir/flags.make
CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.o: /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui.cpp
CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.o: CMakeFiles/SteganographyFrontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.o -MF CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.o.d -o CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.o -c /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui.cpp

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui.cpp > CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.i

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui.cpp -o CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.s

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.o: CMakeFiles/SteganographyFrontend.dir/flags.make
CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.o: /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_draw.cpp
CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.o: CMakeFiles/SteganographyFrontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.o -MF CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.o.d -o CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.o -c /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_draw.cpp

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_draw.cpp > CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.i

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_draw.cpp -o CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.s

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.o: CMakeFiles/SteganographyFrontend.dir/flags.make
CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.o: /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_widgets.cpp
CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.o: CMakeFiles/SteganographyFrontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.o -MF CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.o -c /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_widgets.cpp

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_widgets.cpp > CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.i

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_widgets.cpp -o CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.s

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.o: CMakeFiles/SteganographyFrontend.dir/flags.make
CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.o: /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_tables.cpp
CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.o: CMakeFiles/SteganographyFrontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.o -MF CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.o.d -o CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.o -c /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_tables.cpp

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_tables.cpp > CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.i

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_tables.cpp -o CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.s

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.o: CMakeFiles/SteganographyFrontend.dir/flags.make
CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.o: /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_demo.cpp
CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.o: CMakeFiles/SteganographyFrontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.o -MF CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.o.d -o CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.o -c /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_demo.cpp

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_demo.cpp > CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.i

CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/imgui_demo.cpp -o CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.s

CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/SteganographyFrontend.dir/flags.make
CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.o: /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/backends/imgui_impl_glfw.cpp
CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/SteganographyFrontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.o -MF CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.o.d -o CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.o -c /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/backends/imgui_impl_glfw.cpp

CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/backends/imgui_impl_glfw.cpp > CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.i

CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/backends/imgui_impl_glfw.cpp -o CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.s

CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/SteganographyFrontend.dir/flags.make
CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o: /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/backends/imgui_impl_opengl3.cpp
CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/SteganographyFrontend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o -MF CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o -c /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/backends/imgui_impl_opengl3.cpp

CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/backends/imgui_impl_opengl3.cpp > CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.i

CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/external/imgui/backends/imgui_impl_opengl3.cpp -o CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.s

# Object files for target SteganographyFrontend
SteganographyFrontend_OBJECTS = \
"CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.o" \
"CMakeFiles/SteganographyFrontend.dir/src/main.cpp.o" \
"CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.o" \
"CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.o" \
"CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.o" \
"CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.o" \
"CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.o" \
"CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o"

# External object files for target SteganographyFrontend
SteganographyFrontend_EXTERNAL_OBJECTS =

SteganographyFrontend: CMakeFiles/SteganographyFrontend.dir/src/encode_decode.cpp.o
SteganographyFrontend: CMakeFiles/SteganographyFrontend.dir/src/main.cpp.o
SteganographyFrontend: CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui.cpp.o
SteganographyFrontend: CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_draw.cpp.o
SteganographyFrontend: CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_widgets.cpp.o
SteganographyFrontend: CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_tables.cpp.o
SteganographyFrontend: CMakeFiles/SteganographyFrontend.dir/external/imgui/imgui_demo.cpp.o
SteganographyFrontend: CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_glfw.cpp.o
SteganographyFrontend: CMakeFiles/SteganographyFrontend.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o
SteganographyFrontend: CMakeFiles/SteganographyFrontend.dir/build.make
SteganographyFrontend: _deps/glfw-build/src/libglfw3.a
SteganographyFrontend: _deps/glad-build/libglad.a
SteganographyFrontend: CMakeFiles/SteganographyFrontend.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable SteganographyFrontend"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SteganographyFrontend.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SteganographyFrontend.dir/build: SteganographyFrontend
.PHONY : CMakeFiles/SteganographyFrontend.dir/build

CMakeFiles/SteganographyFrontend.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SteganographyFrontend.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SteganographyFrontend.dir/clean

CMakeFiles/SteganographyFrontend.dir/depend:
	cd /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build /Users/farahorfaly/Desktop/Code/VSCode/GitHub/C-programming-2/group/CPPSteganography/build/CMakeFiles/SteganographyFrontend.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/SteganographyFrontend.dir/depend


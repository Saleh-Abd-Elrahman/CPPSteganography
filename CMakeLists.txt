cmake_minimum_required(VERSION 3.10)
project(CPPSTEGANOGRAPHY)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)

# MacOS specific settings
set(CMAKE_OBJC_COMPILE_OBJECT "")
enable_language(OBJC)
set(CMAKE_OBJC_FLAGS "${CMAKE_C_FLAGS}")

# Add libraries
add_subdirectory(libs)

# Include directories
include_directories(src)

# Find and include GLFW
find_package(GLFW3 REQUIRED)

# Specify source files
set(SOURCES
    src/main.cpp
    src/encode_decode.cpp
    # Add more files as needed
)

# Create the executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Link libraries
target_link_libraries(${PROJECT_NAME} IMGUI SDL3-shared glfw)


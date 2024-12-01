cmake_minimum_required(VERSION 3.10)
project(EchoHiding)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Include directories
include_directories(include)

# Source files
set(SOURCES
    src/EchoEncoder.cpp
    src/EchoDecoder.cpp
    src/main.cpp
)

# Find libsndfile
find_package(SndFile REQUIRED)
include_directories(${SNDFILE_INCLUDE_DIR})

# Add executable
add_executable(EchoHiding ${SOURCES})

# Link libraries
target_link_libraries(EchoHiding ${SNDFILE_LIBRARIES})

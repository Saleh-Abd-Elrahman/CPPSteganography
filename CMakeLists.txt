cmake_minimum_required(VERSION 2.8.4)
project(hiddenwave)

FIND_PACKAGE( Boost 1.40 COMPONENTS program_options REQUIRED )
INCLUDE_DIRECTORIES( ${Boost_INCLUDE_DIR} )

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES src/main.cpp headers/main.h src/Algo.cpp headers/Algo.h src/CustomHead.cpp headers/CustomHead.h)
add_executable(hiddenwave ${SOURCE_FILES})
TARGET_LINK_LIBRARIES( hiddenwave ${Boost_LIBRARIES} )
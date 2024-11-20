cmake_minimum_required(VERSION 3.10)
project(SteganographyFrontend)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)

# Include FetchContent
include(FetchContent)

# Fetch GLFW
FetchContent_Declare(
    glfw
    GIT_REPOSITORY https://github.com/glfw/glfw.git
    GIT_TAG        3.3.8 # Use a specific version (adjust as needed)
)
FetchContent_MakeAvailable(glfw)

# Fetch glad (for OpenGL loading)
FetchContent_Declare(
    glad
    GIT_REPOSITORY https://github.com/Dav1dde/glad.git
    GIT_TAG        master
)
FetchContent_MakeAvailable(glad)

# Add ImGui source files
set(IMGUI_DIR ${CMAKE_SOURCE_DIR}/external/imgui)

set(IMGUI_SOURCES
    ${IMGUI_DIR}/imgui.cpp
    ${IMGUI_DIR}/imgui_draw.cpp
    ${IMGUI_DIR}/imgui_widgets.cpp
    ${IMGUI_DIR}/imgui_tables.cpp
    ${IMGUI_DIR}/imgui_demo.cpp
    ${IMGUI_DIR}/backends/imgui_impl_glfw.cpp
    ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp
)

# Add include directories
include_directories(${IMGUI_DIR} ${IMGUI_DIR}/backends)

# Add source files for the project
file(GLOB_RECURSE SOURCES "src/*.cpp")
file(GLOB_RECURSE HEADERS "include/*.h")

# Add executable
add_executable(SteganographyFrontend ${SOURCES} ${IMGUI_SOURCES})

# Link libraries
find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)

if(APPLE)
    target_link_libraries(SteganographyFrontend PRIVATE glfw glad "-framework OpenGL")
else()
    target_link_libraries(SteganographyFrontend PRIVATE glfw glad OpenGL)
endif()
cmake_minimum_required(VERSION 3.14)
project(demo)

set(CMAKE_CXX_STANDARD 17)

add_subdirectory(lib)
add_subdirectory(src)
add_subdirectory(test)

add_executable(${PROJECT_NAME} main.cpp)
target_compile_options(${PROJECT_NAME} PRIVATE -Wextra -Wall -Wpedantic)
target_link_libraries(${PROJECT_NAME} PRIVATE common)

cmake_minimum_required(VERSION 3.14)
project(demo)

set(CMAKE_CXX_STANDARD 17)

set(WARNING_FLAGS -Wextra -Wall -Wpedantic)

add_subdirectory(lib)
add_subdirectory(src)
add_subdirectory(test)
add_subdirectory(projects)

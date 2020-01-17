add_library(common services/ExampleService.cpp)
target_include_directories(common PUBLIC services)
target_link_libraries(common PUBLIC fmt::fmt pistache_static stdc++fs pthread)

add_library(common services/ExampleService.cpp)
target_include_directories(common PUBLIC services)
target_link_libraries(common PUBLIC 
    fmt
    pistache_static 
    grpc 
    Boost.DI
    stdc++fs
    pthread
)

add_executable(client main.cpp)
target_compile_options(client PRIVATE ${WARNING_FLAGS})
target_link_libraries(client PRIVATE common)

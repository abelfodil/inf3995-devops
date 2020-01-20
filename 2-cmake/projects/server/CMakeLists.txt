add_executable(server main.cpp)
target_compile_options(server PRIVATE ${WARNING_FLAGS})
target_link_libraries(server PRIVATE common)

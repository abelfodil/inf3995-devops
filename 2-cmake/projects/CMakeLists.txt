add_executable(server server.cpp)
target_compile_options(server PRIVATE ${WARNING_FLAGS})
target_link_libraries(server PRIVATE common)

add_executable(client client.cpp)
target_compile_options(client PRIVATE ${WARNING_FLAGS})
target_link_libraries(client PRIVATE common)

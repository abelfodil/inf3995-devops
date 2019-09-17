add_executable(project1 main1.cpp)
target_compile_options(project1 PRIVATE ${WARNING_FLAGS})
target_link_libraries(project1 PRIVATE common)

add_executable(project2 main2.cpp)
target_compile_options(project2 PRIVATE ${WARNING_FLAGS})
target_link_libraries(project2 PRIVATE common)

function(package_add_test TESTNAME)
    add_executable(${TESTNAME} ${ARGN})
    target_compile_options(${TESTNAME} PRIVATE -Wall -Wextra -pedantic)
    target_link_libraries(${TESTNAME} gtest gmock gtest_main common)
    add_test(${TESTNAME} COMMAND ${TESTNAME})
endfunction()

file(GLOB TEST_SRC *.cpp)
package_add_test(${PROJECT_NAME}_tests ${TEST_SRC})

option(PISTACHE_ENABLE_NETWORK_TESTS OFF)
add_subdirectory(pistache)

add_subdirectory(boost.di)

option(JSON_BuildTests OFF)
add_subdirectory(json)

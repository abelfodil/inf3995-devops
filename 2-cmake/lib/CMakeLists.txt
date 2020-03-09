include(FetchContent)

FetchContent_Declare(
        boost.di
        GIT_REPOSITORY https://github.com/boost-experimental/di.git
        GIT_TAG cpp14
)

FetchContent_Declare(
        json
        GIT_REPOSITORY https://github.com/nlohmann/json.git
        GIT_TAG v3.7.3
)

FetchContent_Declare(
        pistache
        GIT_REPOSITORY https://github.com/oktal/pistache.git
)

FetchContent_Declare(
        restbed
        GIT_REPOSITORY https://github.com/Corvusoft/restbed.git
)

option(PISTACHE_ENABLE_NETWORK_TESTS OFF)
option(JSON_BuildTests OFF)
option(BUILD_SSL OFF)

FetchContent_MakeAvailable(boost.di json pistache restbed)


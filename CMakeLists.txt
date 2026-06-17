cmake_minimum_required(VERSION 3.16)
project(trance LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(LUAU_BUILD_CLI OFF CACHE BOOL "" FORCE)
set(LUAU_BUILD_TESTS OFF CACHE BOOL "" FORCE)

include(FetchContent)
FetchContent_Declare(
    luau
    GIT_REPOSITORY https://github.com/luau-lang/luau.git
    GIT_TAG        master
)
FetchContent_MakeAvailable(luau)

add_executable(trance src/main.cpp)

target_link_libraries(trance PRIVATE
    Luau.Ast
)

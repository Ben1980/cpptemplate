cmake_minimum_required(VERSION 3.12)
project(PROJECTNAME)

set(SOURCE main.cpp)
add_executable(${PROJECT_NAME} ${SOURCE})

find_package(fmt CONFIG REQUIRED)
find_package(doctest CONFIG REQUIRED)
target_link_libraries(${PROJECT_NAME} PRIVATE fmt::fmt fmt::fmt-header-only doctest::doctest LIBNAME)

include(doctest)
doctest_discover_tests(${PROJECT_NAME})
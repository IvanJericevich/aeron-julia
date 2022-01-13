cmake_minimum_required(VERSION 3.22)
project(aeron-julia)

include(ExternalProject)


find_package(Boost COMPONENTS system REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})

add_subdirectory(external)
add_subdirectory(src)
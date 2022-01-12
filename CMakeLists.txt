cmake_minimum_required(VERSION 3.22)
project(aeron-julia)

include(ExternalProject)

add_subdirectory(external)
add_subdirectory(src)
cmake_minimum_required(VERSION 3.9)
project(hello_docker)

set(CMAKE_CXX_STANDARD 14)
set(SOURCE_FILES hello.cpp)

add_executable(testdocker_run ${SOURCE_FILES})

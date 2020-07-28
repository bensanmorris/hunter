cmake_minimum_required(VERSION 3.0)

# hunter config
include("cmake/HunterGate.cmake")
HunterGate(
    URL "https://github.com/cpp-pm/hunter/archive/v0.16.15.tar.gz"
    SHA1 "6974c2150fc0d3b09de3ad1efcbf15d360647ffa"
)

project(download-tensorflow)

# find tensorflow
hunter_add_package(tensorflow)
find_package(tensorflow CONFIG REQUIRED)

# create exe
add_executable(example example.cpp)
target_link_libraries(example PRIVATE tensorflow::tensorflow_cc tensorflow::tensorflow_framework)


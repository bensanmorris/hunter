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
find_package(tensorflow CONFIG REQUIRED PATHS ${TENSORFLOW_ROOT})

# create exe
add_executable(example example.cpp)
target_link_libraries(example PRIVATE tensorflow::tensorflow_framework)

# fix up missing symlinks
#if(UNIX)
#    add_custom_command(TARGET example POST_BUILD COMMAND ${CMAKE_COMMAND} -E create_symlink ${TENSORFLOW_ROOT}/installed/x64-linux/lib/libtensorflow_cc.so.1.14.0 ${TENSORFLOW_ROOT}/installed/x64-linux/lib/libtensorflow_cc.so.1)
#    add_custom_command(TARGET example POST_BUILD COMMAND ${CMAKE_COMMAND} -E create_symlink ${TENSORFLOW_ROOT}/installed/x64-linux/lib/libtensorflow_framework.so.1.14.0 ${TENSORFLOW_ROOT}/installed/x64-linux/lib/libtensorflow_framework.so.1)
#endif()

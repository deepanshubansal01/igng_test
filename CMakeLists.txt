cmake_minimum_required(VERSION 3.10.0 FATAL_ERROR)

project(ignition_test)

# Find ignition-cmake
find_package(ignition-cmake3 REQUIRED)

# Find ignition-math
find_package(ignition-math7 REQUIRED)

# Find SDFormat
find_package(sdformat13 REQUIRED)
set(SDF_VER ${sdformat13_VERSION_MAJOR})

add_executable(test_inertia test_inertia.cpp)

target_link_libraries(test_inertia
        sdformat${SDF_VER}::sdformat${SDF_VER}
        ignition-math7::ignition-math7
        )
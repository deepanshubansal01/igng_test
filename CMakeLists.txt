cmake_minimum_required(VERSION 3.10.0 FATAL_ERROR)

project(ignition_test)

# Find ignition-cmake
find_package(ignition-cmake2 REQUIRED)

# Find ignition-cmake
find_package(ignition-math6 REQUIRED)

# Find SDFormat
find_package(sdformat12 REQUIRED)
set(SDF_VER ${sdformat12_VERSION_MAJOR})

add_executable(test_inertia test_inertia.cpp)

target_link_libraries(test_inertia
        sdformat${SDF_VER}::sdformat${SDF_VER}
        ignition-math6::ignition-math6
        )

cmake_minimum_required(VERSION 3.13)

# Include the pico SDK
include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

# Project name
project(pico_blink C CXX ASM)

# Set C standard
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialize pico SDK
pico_sdk_init()

# Add the executable
add_executable(blink blink.c)

# Link pico stdlib
target_link_libraries(blink pico_stdlib)

# Create UF2 output
pico_add_uf2_output(blink)

cmake_minimum_required(VERSION 3.13)

# Inclure le SDK RP2350 ou compatible
include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

project(rp2350_blink C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(blink blink.c)

target_link_libraries(blink pico_stdlib)

pico_add_uf2_output(blink)

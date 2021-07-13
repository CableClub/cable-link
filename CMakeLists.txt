cmake_minimum_required(VERSION 3.13)
include(pico_sdk_import.cmake)
project(cablelink_test C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
pico_sdk_init()
add_executable(cablelink
	src/main.c
	)
target_link_libraries(cablelink 
    pico_stdlib
    hardware_spi
    )
pico_enable_stdio_usb(cablelink 1)
pico_enable_stdio_uart(cablelink 1)
pico_add_extra_outputs(cablelink)
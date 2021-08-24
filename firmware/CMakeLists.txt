cmake_minimum_required(VERSION 3.13)
include(pico_sdk_import.cmake)
project(cablelink)
pico_sdk_init()

add_executable(cablelink)
pico_enable_stdio_usb(cablelink 1)
pico_enable_stdio_uart(cablelink 0)

target_include_directories(cablelink PRIVATE ${CMAKE_CURRENT_LIST_DIR}/include)

target_sources(cablelink PRIVATE
        src/main.c
        src/spi.c
        )
target_link_libraries(cablelink pico_stdlib hardware_spi)
pico_add_extra_outputs(cablelink)

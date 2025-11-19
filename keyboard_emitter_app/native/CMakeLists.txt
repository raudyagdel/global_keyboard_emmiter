cmake_minimum_required(VERSION 3.10)

project(keyboard_emitter)

add_library(keyboard_emitter SHARED keyboard_emitter.c)

if (WIN32)
    target_link_libraries(keyboard_emitter user32)
elseif (UNIX)
    find_package(X11 REQUIRED)
    target_link_libraries(keyboard_emitter ${X11_LIBRARIES} ${X11_XTest_LIB})
endif()

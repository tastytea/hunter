# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-libconfig)

# DOCUMENTATION_START {
hunter_add_package(libconfig)

# find_package(libconfig++ CONFIG REQUIRED)
# add_executable(boo_cpp boo.cpp)
# target_link_libraries(boo_cpp PUBLIC libconfig::config++)

find_package(libconfig CONFIG REQUIRED)
add_executable(boo_c boo.c)
target_link_libraries(boo_c PUBLIC libconfig::config)
# DOCUMENTATION_END }

# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    libconfig
    VERSION
    1.7.2-a0301bd
    URL
    "https://github.com/tastytea/libconfig/archive/cmake_config_target.tar.gz"
    SHA1
    6eab3c39f39214dd92cbb9464da813ccb5d9db64
)

hunter_cmake_args(
    libconfig
    CMAKE_ARGS
        BUILD_EXAMPLES=OFF
        BUILD_TESTS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libconfig)
hunter_download(PACKAGE_NAME libconfig)

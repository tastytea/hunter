# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_configuration_types)
include(hunter_pick_scheme)
include(hunter_download)
include(hunter_cacheable)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    libconfig
    VERSION
    1.7.2-a0301bd
    URL
    "https://github.com/hyperrealm/libconfig/archive/a0301bde126c2b08b50e789fd025a8c513c914c3.tar.gz"
    SHA1
    a9f899e8ea6d2d55969b6fc619af116a1ce53e0e
    )

hunter_configuration_types(libconfig CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_cacheable(libconfig)

hunter_cmake_args(
    libconfig
    CMAKE_ARGS
        BOOTSTRAP=autoreconf
        PKGCONFIG_EXPORT_TARGETS=libconfig++;libconfig
        EXTRA_FLAGS=--enable-shared=no --disable-examples --disable-doc
)

hunter_download(PACKAGE_NAME libconfig
    PACKAGE_INTERNAL_DEPS_ID "1"  # Increment for each new pull request
    PACKAGE_UNRELOCATABLE_TEXT_FILES
    lib/pkgconfig/libconfig++.pc
    lib/pkgconfig/libconfig.pc)

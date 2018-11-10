# - Try to find FFI
# Once done, this will define
#
#  FFI_FOUND - system has ffi
#  FFI_INCLUDE_DIRS - the ffi include directories
#  FFI_LIBRARIES - link these to use ffi
#
# See documentation on how to write CMake scripts at
# http://www.cmake.org/Wiki/CMake:How_To_Find_Libraries

include(LibFindMacros)

find_path(FFI_INCLUDE_DIR
    NAMES ffi.h
    PATH_SUFFIXES lib/libffi-3.2.1/include
)

find_library(FFI_LIBRARY
    NAMES ffi libffi
)

set(FFI_PROCESS_INCLUDES FFI_INCLUDE_DIR)
set(FFI_PROCESS_LIBS FFI_LIBRARY)
libfind_process(FFI)

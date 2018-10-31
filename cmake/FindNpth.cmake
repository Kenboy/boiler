# - Try to find npth
# Once done, this will define
#
#  Npth_FOUND - system has Npth
#  Npth_INCLUDE_DIRS - the Npth include directories
#  Npth_LIBRARIES - link these to use npth
#
# See documentation on how to write CMake scripts at
# http://www.cmake.org/Wiki/CMake:How_To_Find_Libraries

include(LibFindMacros)

find_path(Npth_INCLUDE_DIR
    NAMES npth.h
)

find_library(Npth_LIBRARY
    NAMES libnpth
)

set(Npth_PROCESS_INCLUDES Npth_INCLUDE_DIR)
set(Npth_PROCESS_LIBS Npth_LIBRARY)
libfind_process(Npth)

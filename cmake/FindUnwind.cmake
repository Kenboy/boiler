# - Try to find unwind
# Once done, this will define
#
#  Unwind_FOUND - system has unwind
#  Unwind_INCLUDE_DIRS - the unwind include directories
#  Unwind_LIBRARIES - link these to use unwind
#
# See documentation on how to write CMake scripts at
# http://www.cmake.org/Wiki/CMake:How_To_Find_Libraries

include(LibFindMacros)

find_path(Unwind_INCLUDE_DIR
  NAMES libunwind.h
)

find_library(Unwind_LIBRARY
  NAMES unwind-x86_64
)

set(Unwind_PROCESS_INCLUDES Unwind_INCLUDE_DIR)
set(Unwind_PROCESS_LIBS Unwind_LIBRARY)
libfind_process(Unwind)

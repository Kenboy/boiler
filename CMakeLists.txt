cmake_minimum_required(VERSION 3.6)

#--------------------------------------------------------------------
# Add cmake modules
#--------------------------------------------------------------------
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH}
        "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

#--------------------------------------------------------------------
# Add cmake output directory
#--------------------------------------------------------------------
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin
        CACHE PATH "Single Directory for all")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin
        CACHE PATH "Single Directory for all")

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib
        CACHE PATH "Single Directory for all")

#--------------------------------------------------------------------
# Add subdirectories
#--------------------------------------------------------------------
add_subdirectory(source)
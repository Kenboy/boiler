#--------------------------------------------------------------------
# Project
#--------------------------------------------------------------------
project(launcher C)

#--------------------------------------------------------------------
# Include
#--------------------------------------------------------------------
include(UtilityFunctions)

find_package(Unwind)
find_package(FFI)

CreateProgram(boiler
    DIRS
        "${launcher_SOURCE_DIR}/src/**"
    INCLUDES
        PUBLIC
            "${launcher_SOURCE_DIR}/include"
        PRIVATE
            ${Unwind_INCLUDE_DIR}
            ${FFI_INCLUDE_DIR}
    DEFINES
        PUBLIC
            $<$<BOOL:${LINUX}>:PLATFORM_LINUX>
            $<$<BOOL:${APPLE}>:PLATFORM_OSX>
            $<$<BOOL:${WIN32}>:PLATFORM_WIN>
            $<$<CONFIG:Debug>:BUILD_DEBUG>
            $<$<NOT:$<CONFIG:Debug>>:BUILD_FINAL>
    LINK
        cli
    PROPERTIES
        FOLDER bin
)

CopyDependentLibs(boiler)
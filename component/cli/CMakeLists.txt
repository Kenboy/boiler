#--------------------------------------------------------------------
# Project
#--------------------------------------------------------------------
project(cli C)

#--------------------------------------------------------------------
# Include
#--------------------------------------------------------------------
include(UtilityFunctions)

CreateLibrary(cli
    DIRS
        "${cli_SOURCE_DIR}/src/**"
    INCLUDES
        PUBLIC
            "${cli_SOURCE_DIR}/include"
        PRIVATE
    DEFINES
        PUBLIC
            $<$<BOOL:${LINUX}>:PLATFORM_LINUX>
            $<$<BOOL:${APPLE}>:PLATFORM_OSX>
            $<$<BOOL:${WIN32}>:PLATFORM_WIN>
            $<$<CONFIG:Debug>:BUILD_DEBUG>
            $<$<NOT:$<CONFIG:Debug>>:BUILD_FINAL>
    LINK
    PROPERTIES
        FOLDER lib
)
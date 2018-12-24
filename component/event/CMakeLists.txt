#--------------------------------------------------------------------
# Project
#--------------------------------------------------------------------
project(event C)

#--------------------------------------------------------------------
# Include
#--------------------------------------------------------------------
include(UtilityFunctions)

CreateLibrary(event
    DIRS
        "${event_SOURCE_DIR}/src/**"
    INCLUDES
        PUBLIC
            "${event_SOURCE_DIR}/include"
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
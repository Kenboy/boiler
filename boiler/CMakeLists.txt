project(boiler C)

include(UtilityFunctions)

find_package(Npth)

CreateSharedLibrary(boiler
    DIRS
        "${boiler_SOURCE_DIR}/src"
    INCLUDES
        PUBLIC
            "${boiler_SOURCE_DIR}/include"
        PRIVATE
            ${Unwind_INCLUDE_DIR}
    DEFINES
        PUBLIC
            $<$<BOOL:${LINUX}>:PLATFORM_LINUX>
            $<$<BOOL:${APPLE}>:PLATFORM_OSX>
            $<$<BOOL:${WIN32}>:PLATFORM_WIN>
            $<$<CONFIG:Debug>:BUILD_DEBUG>
            $<$<NOT:$<CONFIG:Debug>>:BUILD_FINAL>
    LINK
        ${Npth_LIBRARIES}
    PROPERTIES
        FOLDER lib
)
project(launcher C)

include(UtilityFunctions)

CreateProgram(launcher
    DIRS
        "${launcher_SOURCE_DIR}/src"
    INCLUDE
        "${launcher_SOURCE_DIR}/include"
    LINK
        boiler
    PROPERTIES
        FOLDER bin
)

CopyDependentLibs(launcher)
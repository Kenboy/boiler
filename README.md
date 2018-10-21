## Build Instructions
To build with [CMake](https://cmake.org/):

```bash
$ cget install
$ cmake -DCMAKE_TOOLCHAIN_FILE=$CGET_PREFIX/cget/cget.cmake -DCMAKE_INSTALL_PREFIX=$CGET_PREFIX ..
$ cmake --build .
```
# keyboard_emitter_app

A new Flutter project.

## Build Native Library

# For Linux
1- Install dependencies:

    ```bash
        sudo apt-get install libuinput-dev
    ```

 ```bash
    cd native
    mkdir build
    cd build
    cmake ..
    make
```
This will generate libkeyboard_emitter.so.


# For Windows
1- Install Visual Studio Build Tools:

https://visualstudio.microsoft.com/visual-cpp-build-tools/

Make sure that the Visual Studio Build Tools are installed. You can download them here.
During installation, make sure to select C++ CMake tools and MSBuild tools.

2- Open Developer Command Prompt:

Open the Developer Command Prompt for Visual Studio. You can search for "Developer Command Prompt" in the start menu.
Run CMake to generate the project:

 ```bash
    mkdir build
    cd build
    cmake .. -G "Visual Studio 17 2022" -A x64
    cmake --build . --config Release
 ```
 
This will generate the keyboard_emitter.dll in the Release directory.
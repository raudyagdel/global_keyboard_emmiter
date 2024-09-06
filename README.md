Here's a structured README file for both the `keyboard_emitter_app` and `keyboard_receiver_app` projects. This will help communicate the purpose, logic, and usage of each project effectively on GitHub.

---

# keyboard_emitter_app

A Flutter desktop application designed to emit global keyboard events for Windows and Linux. The app uses Dart's Foreign Function Interface (`dart:ffi`) to interact with a C/C++ library that sends keyboard input events to the operating system.

## Table of Contents
- [Overview](#overview)
- [Key Features](#key-features)
- [Architecture](#architecture)
- [Build & Installation](#build--installation)
- [Usage](#usage)
- [Development](#development)

## Overview

`keyboard_emitter_app` provides a way to programmatically send keyboard events (like pressing a key) from a Flutter desktop application. It uses `dart:ffi` to interact with platform-specific C libraries that handle keypress generation.

The project targets two platforms:
- **Windows**: Emits virtual key events using the Windows API.
- **Linux**: Emits virtual key events using the `/dev/uinput` interface.

## Key Features

- Emit specific key events (e.g., sending the letter 'A') from a Flutter UI.
- Cross-platform support for Windows and Linux.
- Interacts with native system libraries using `dart:ffi` for high-performance execution.
- Can emit key events in the background (global key emission).

## Architecture

### Flutter App

- **UI**: A simple Flutter desktop app with a button that, when pressed, sends a key event.
- **Dart FFI**: Communicates with the native shared library (`.dll` or `.so`) via Dart FFI.
  
### Native Library (C/C++)

- **Windows**: Uses the `SendInput` API from Windows to simulate keypresses.
- **Linux**: Uses the `uinput` subsystem to generate keypress events on Linux systems.

The shared libraries are platform-specific:
- `keyboard_emitter.dll` for Windows
- `libkeyboard_emitter.so` for Linux

## Build & Installation

### Build the Native Library

#### Windows

1. Install [Visual Studio 2022](https://visualstudio.microsoft.com/vs/) with C++ tools.
2. Open a command prompt in the `native` folder:
   ```bash
   mkdir build
   cd build
   cmake .. -G "Visual Studio 17 2022" -A x64
   cmake --build . --config Release
   ```
3. The `keyboard_emitter.dll` file will be generated inside the `build/Release` folder.

#### Linux

1. Install necessary build tools:
   ```bash
   sudo apt-get install build-essential cmake libuinput-dev
   ```
2. Open a terminal in the `native` folder:
   ```bash
   mkdir build
   cd build
   cmake ..
   make
   ```
3. The `libkeyboard_emitter.so` file will be generated inside the `build` folder.

### Flutter App Setup

1. Install [Flutter](https://flutter.dev/docs/get-started/install).
2. Clone the repository:
   ```bash
   git clone https://github.com/raudyagdel/global_keyboard_emmiter.git
   cd global_keyboard_emmiter
   flutter pub get
   ```
3. Place the generated `.dll` or `.so` file inside the `native` folder of the project.
4. Run the application:
   ```bash
   flutter run -d windows
   ```

## Usage

1. Launch the app.
2. Click the button to send a key event (e.g., the letter 'A').
3. Logs will show the event being emitted in real-time.

---

# keyboard_receiver_app

A Java desktop application that uses [JNativeHook](https://github.com/kwhat/jnativehook) to listen for global keyboard events, capturing keypresses even when the application is in the background.

## Table of Contents
- [Overview](#overview)
- [Key Features](#key-features)
- [Architecture](#architecture)
- [Build & Installation](#build--installation)
- [Usage](#usage)
- [Development](#development)

## Overview

`keyboard_receiver_app` listens for global keyboard events using JNativeHook, a Java library that enables global input hooks. It captures keypresses regardless of whether the app is in the foreground or background.

This app is designed to work alongside `keyboard_emitter_app`, allowing emitted key events from `keyboard_emitter_app` to be received and processed by `keyboard_receiver_app`.

## Key Features

- Receive global key events using JNativeHook.
- Cross-platform support for Windows and Linux.
- Log each keypress event to the console in real-time.
- Can work in the background (global key capture).

## Architecture

### Java App

- **Global Key Listener**: The app uses JNativeHook to capture global keyboard events.
- **Event Logging**: Each keypress is logged to the console in real-time for debugging and monitoring purposes.

## Build & Installation

1. Install the [Java Development Kit (JDK)](https://adoptopenjdk.net/).
2. Clone the repository:
   ```bash
   git clone https://github.com/raudyagdel/global_keyboard_emmiter.git
   cd global_keyboard_emmiter
   ```
3. Add the [JNativeHook](https://github.com/kwhat/jnativehook) library to your project.

### Running the App

1. Build the project using your preferred IDE (e.g., IntelliJ IDEA, Eclipse) or command line with `javac`.
2. Run the app:
   ```bash
   java -jar keyboard_receiver_app.jar
   ```

### Integration with `keyboard_emitter_app`

Once the `keyboard_emitter_app` is emitting key events, `keyboard_receiver_app` will capture these events globally, regardless of whether the Java app is in focus.

## Usage

1. Launch the `keyboard_receiver_app`.
2. Start pressing keys globally (from any app).
3. Watch the key events being logged in real-time in the console.

---

## Conclusion

Both `keyboard_emitter_app` and `keyboard_receiver_app` are designed to work together, enabling a Flutter app to emit global key events and a Java app to capture these events. They demonstrate how to bridge different languages and platforms (Dart/Flutter, C/C++, Java) to achieve complex event handling across multiple operating systems.

Feel free to customize and extend the functionality of both apps based on your specific use case.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [JNativeHook](https://github.com/kwhat/jnativehook) for global keyboard event capturing.
- Flutter and Dart communities for continuous support.
- The open-source community for providing useful tools and resources.

---

This README structure provides an easy-to-understand explanation of both applications and instructions on how to build, run, and integrate them.

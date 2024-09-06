import 'dart:ffi';
import 'dart:io';

// Define function signature
typedef EmitKeyNative = Void Function(Int32 keyCode);
typedef EmitKeyDart = void Function(int keyCode);

class KeyboardEmitter {
  late DynamicLibrary _lib;
  late EmitKeyDart emitKey;

  KeyboardEmitter() {
    // Load the shared library
    if (Platform.isWindows) {
      _lib = DynamicLibrary.open('native/keyboard_emitter.dll');
    } else if (Platform.isLinux) {
      _lib = DynamicLibrary.open('libkeyboard_emitter.so');
    } else {
      throw UnsupportedError('Unsupported platform');
    }

    // Lookup the emit_key function
    emitKey = _lib.lookupFunction<EmitKeyNative, EmitKeyDart>('emit_key');
  }

  // Emit a key event
  void pressKey(int keyCode) {
    emitKey(keyCode);
  }
}

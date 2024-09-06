import 'package:flutter/material.dart';
import 'keyboard_emitter.dart';

void main() {
  runApp(KeyBoardApp());
}

class KeyBoardApp extends StatelessWidget {
  final KeyboardEmitter _keyboardEmitter = KeyboardEmitter();

  KeyBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Keyboard Emitter'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Emit key 'A' (key code 65)
              _keyboardEmitter.pressKey(65);
            },
            child: const Text('Press A Key'),
          ),
        ),
      ),
    );
  }
}

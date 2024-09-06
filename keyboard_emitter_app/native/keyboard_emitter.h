#ifndef KEYBOARD_EMITTER_H
#define KEYBOARD_EMITTER_H

#ifdef _WIN32
  __declspec(dllexport) void emit_key(int key_code);
#elif __linux__
  void emit_key(int key_code);
#endif

#endif

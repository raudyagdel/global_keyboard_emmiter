#include "keyboard_emitter.h"
#include <stdio.h>

#ifdef _WIN32
#include <windows.h>

void emit_key(int key_code)
{
    INPUT input;
    input.type = INPUT_KEYBOARD;
    input.ki.wVk = key_code;
    input.ki.dwFlags = 0;
    SendInput(1, &input, sizeof(INPUT));

    input.ki.dwFlags = KEYEVENTF_KEYUP;
    SendInput(1, &input, sizeof(INPUT));
}

#elif __linux__
#include <X11/Xlib.h>
#include <X11/extensions/XTest.h>
#include <X11/keysym.h>
#include <unistd.h>

void emit_key(int key_code)
{
    Display *display = XOpenDisplay(NULL);
    if (display == NULL)
    {
        fprintf(stderr, "Cannot open display\n");
        return;
    }

    // Convert key code to KeySym if needed
    // For X11, you typically work with KeySyms or KeyCodes
    KeyCode kc = XKeysymToKeycode(display, key_code);

    if (kc == 0)
    {
        fprintf(stderr, "Invalid key code: %d\n", key_code);
        XCloseDisplay(display);
        return;
    }

    // Press key
    XTestFakeKeyEvent(display, kc, True, CurrentTime);
    XFlush(display);

    // Small delay
    usleep(10000); // 10ms

    // Release key
    XTestFakeKeyEvent(display, kc, False, CurrentTime);
    XFlush(display);

    XCloseDisplay(display);
}

// Alternative function that works with KeySyms directly
void emit_keysym(KeySym keysym)
{
    Display *display = XOpenDisplay(NULL);
    if (display == NULL)
    {
        fprintf(stderr, "Cannot open display\n");
        return;
    }

    KeyCode kc = XKeysymToKeycode(display, keysym);

    if (kc == 0)
    {
        fprintf(stderr, "Invalid keysym: %ld\n", keysym);
        XCloseDisplay(display);
        return;
    }

    // Press key
    XTestFakeKeyEvent(display, kc, True, CurrentTime);
    XFlush(display);

    // Small delay
    usleep(10000);

    // Release key
    XTestFakeKeyEvent(display, kc, False, CurrentTime);
    XFlush(display);

    XCloseDisplay(display);
}

// Function to emit key combinations (e.g., Ctrl+C)
void emit_key_combo(KeySym modifier, KeySym key)
{
    Display *display = XOpenDisplay(NULL);
    if (display == NULL)
    {
        fprintf(stderr, "Cannot open display\n");
        return;
    }

    KeyCode mod_kc = XKeysymToKeycode(display, modifier);
    KeyCode key_kc = XKeysymToKeycode(display, key);

    if (mod_kc == 0 || key_kc == 0)
    {
        fprintf(stderr, "Invalid key combination\n");
        XCloseDisplay(display);
        return;
    }

    // Press modifier
    XTestFakeKeyEvent(display, mod_kc, True, CurrentTime);
    XFlush(display);
    usleep(10000);

    // Press key
    XTestFakeKeyEvent(display, key_kc, True, CurrentTime);
    XFlush(display);
    usleep(10000);

    // Release key
    XTestFakeKeyEvent(display, key_kc, False, CurrentTime);
    XFlush(display);
    usleep(10000);

    // Release modifier
    XTestFakeKeyEvent(display, mod_kc, False, CurrentTime);
    XFlush(display);

    XCloseDisplay(display);
}

// #elif __linux__
// #include <fcntl.h>
// #include <linux/uinput.h>
// #include <unistd.h>
// #include <string.h>

// void emit_key(int key_code)
// {
//     int fd = open("/dev/uinput", O_WRONLY | O_NONBLOCK);
//     if (fd < 0)
//     {
//         printf("Error opening /dev/uinput\n");
//         return;
//     }

//     ioctl(fd, UI_SET_EVBIT, EV_KEY);
//     ioctl(fd, UI_SET_EVBIT, EV_SYN);
//     ioctl(fd, UI_SET_KEYBIT, key_code);

//     struct uinput_user_dev uidev;
//     memset(&uidev, 0, sizeof(uidev));
//     snprintf(uidev.name, UINPUT_MAX_NAME_SIZE, "Virtual Keyboard");
//     uidev.id.bustype = BUS_USB;
//     uidev.id.vendor = 0x1;
//     uidev.id.product = 0x1;
//     uidev.id.version = 1;

//     write(fd, &uidev, sizeof(uidev));
//     ioctl(fd, UI_DEV_CREATE);

//     struct input_event ev;
//     memset(&ev, 0, sizeof(struct input_event));
//     ev.type = EV_KEY;
//     ev.code = key_code;
//     ev.value = 1;
//     write(fd, &ev, sizeof(struct input_event));

//     ev.value = 0;
//     write(fd, &ev, sizeof(struct input_event));

//     memset(&ev, 0, sizeof(struct input_event));
//     ev.type = EV_SYN;
//     ev.code = SYN_REPORT;
//     ev.value = 0;
//     write(fd, &ev, sizeof(struct input_event));

//     ioctl(fd, UI_DEV_DESTROY);
//     close(fd);
// }
#endif

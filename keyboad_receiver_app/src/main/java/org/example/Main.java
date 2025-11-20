package org.example;

import com.github.kwhat.jnativehook.GlobalScreen;
import com.github.kwhat.jnativehook.NativeHookException;


public class Main  {
    public static void main(String[] args) throws NativeHookException {
//        System.out.println("Hello World!");
        try {
            GlobalScreen.registerNativeHook();
        } catch (NativeHookException ex) {
            System.out.println(ex.getMessage());
        }

        KeyboardListener listener = new KeyboardListener();
        GlobalScreen.addNativeKeyListener(listener);

//        GlobalScreen.removeNativeKeyListener(listener);
    }
}
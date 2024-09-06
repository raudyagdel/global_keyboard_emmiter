package org.example;

import com.github.kwhat.jnativehook.GlobalScreen;
import com.github.kwhat.jnativehook.NativeHookException;
import com.github.kwhat.jnativehook.keyboard.NativeKeyEvent;
import com.github.kwhat.jnativehook.keyboard.NativeKeyListener;

public class Main {
    public static void main(String[] args) {
//        System.out.println("Hello World!");
        try {
            GlobalScreen.registerNativeHook();
        } catch (NativeHookException ex) {
            System.out.println(ex.getMessage());
        }

        GlobalScreen.addNativeKeyListener(
                new NativeKeyListener() {
                    @Override
                    public void nativeKeyTyped(NativeKeyEvent nativeEvent) {
                        System.out.println("Pressed " + nativeEvent.getRawCode());
                    }
                }
        );
    }
}
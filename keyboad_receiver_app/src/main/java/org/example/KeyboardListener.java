package org.example;

import com.github.kwhat.jnativehook.keyboard.NativeKeyEvent;
import com.github.kwhat.jnativehook.keyboard.NativeKeyListener;

public class KeyboardListener implements NativeKeyListener {

    @Override
    public void nativeKeyTyped(NativeKeyEvent nativeEvent) {
        System.out.println("Pressed (Raw Code) " + nativeEvent.getRawCode());
        System.out.println("Pressed (Key Char) " + nativeEvent.getKeyChar());


        //            if (event instanceof KeyEvent) {
//                KeyEvent ke = (KeyEvent) event;
//                if (ke.getID() == KeyEvent.KEY_PRESSED) {
//                    int keyCode = 0;
//                    if(Character.isAlphabetic(ke.getKeyChar())) {
//                        keyCode = ke.getKeyChar();
//                    }
//                    else {
//                        keyCode = keyCodeMapper.keyCode(ke);
//                    }
//                    newInput(keyCode, ke.getKeyChar(), ke.getWhen());
//                }
//
//            }

    }

}
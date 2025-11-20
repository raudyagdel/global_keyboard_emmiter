/// X11 KeySym values mapping
/// These are the exact decimal values that X11 uses for keyboard keys
/// Based on /usr/include/X11/keysymdef.h
class Keys {
  // Lowercase letters (a-z): 97-122
  static const int a = 97;
  static const int b = 98;
  static const int c = 99;
  static const int d = 100;
  static const int e = 101;
  static const int f = 102;
  static const int g = 103;
  static const int h = 104;
  static const int i = 105;
  static const int j = 106;
  static const int k = 107;
  static const int l = 108;
  static const int m = 109;
  static const int n = 110;
  static const int o = 111;
  static const int p = 112;
  static const int q = 113;
  static const int r = 114;
  static const int s = 115;
  static const int t = 116;
  static const int u = 117;
  static const int v = 118;
  static const int w = 119;
  static const int x = 120;
  static const int y = 121;
  static const int z = 122;

  // Uppercase letters (A-Z): 65-90
  static const int A = 65;
  static const int B = 66;
  static const int C = 67;
  static const int D = 68;
  static const int E = 69;
  static const int F = 70;
  static const int G = 71;
  static const int H = 72;
  static const int I = 73;
  static const int J = 74;
  static const int K = 75;
  static const int L = 76;
  static const int M = 77;
  static const int N = 78;
  static const int O = 79;
  static const int P = 80;
  static const int Q = 81;
  static const int R = 82;
  static const int S = 83;
  static const int T = 84;
  static const int U = 85;
  static const int V = 86;
  static const int W = 87;
  static const int X = 88;
  static const int Y = 89;
  static const int Z = 90;

  // Numbers (0-9): 48-57
  static const int NUM0 = 48;
  static const int NUM1 = 49;
  static const int NUM2 = 50;
  static const int NUM3 = 51;
  static const int NUM4 = 52;
  static const int NUM5 = 53;
  static const int NUM6 = 54;
  static const int NUM7 = 55;
  static const int NUM8 = 56;
  static const int NUM9 = 57;

  // Special characters
  static const int SPACE = 32;
  static const int EXCLAM = 33; // !
  static const int QUOTEDBL = 34; // "
  static const int NUMBERSIGN = 35; // #
  static const int DOLLAR = 36; // $
  static const int PERCENT = 37; // %
  static const int AMPERSAND = 38; // &
  static const int APOSTROPHE = 39; // '
  static const int PARENLEFT = 40; // (
  static const int PARENRIGHT = 41; // )
  static const int ASTERISK = 42; // *
  static const int PLUS = 43; // +
  static const int COMMA = 44; // ,
  static const int MINUS = 45; // -
  static const int PERIOD = 46; // .
  static const int SLASH = 47; // /
  static const int COLON = 58; // :
  static const int SEMICOLON = 59; // ;
  static const int LESS = 60; //
  static const int EQUAL = 61; // =
  static const int GREATER = 62; // >
  static const int QUESTION = 63; // ?
  static const int AT = 64; // @
  static const int BRACKETLEFT = 91; // [
  static const int BACKSLASH = 92; // \
  static const int BRACKETRIGHT = 93; // ]
  static const int ASCIICIRCUM = 94; // ^
  static const int UNDERSCORE = 95; // _
  static const int GRAVE = 96; // `
  static const int BRACELEFT = 123; // {
  static const int BAR = 124; // |
  static const int BRACERIGHT = 125; // }
  static const int ASCIITILDE = 126; // ~

  // Function keys (0xFFBE - 0xFFD5)
  static const int F1 = 65470; // 0xFFBE
  static const int F2 = 65471; // 0xFFBF
  static const int F3 = 65472; // 0xFFC0
  static const int F4 = 65473; // 0xFFC1
  static const int F5 = 65474; // 0xFFC2
  static const int F6 = 65475; // 0xFFC3
  static const int F7 = 65476; // 0xFFC4
  static const int F8 = 65477; // 0xFFC5
  static const int F9 = 65478; // 0xFFC6
  static const int F10 = 65479; // 0xFFC7
  static const int F11 = 65480; // 0xFFC8
  static const int F12 = 65481; // 0xFFC9
  static const int F13 = 65482; // 0xFFCA
  static const int F14 = 65483; // 0xFFCB
  static const int F15 = 65484; // 0xFFCC
  static const int F16 = 65485; // 0xFFCD
  static const int F17 = 65486; // 0xFFCE
  static const int F18 = 65487; // 0xFFCF
  static const int F19 = 65488; // 0xFFD0
  static const int F20 = 65489; // 0xFFD1
  static const int F21 = 65490; // 0xFFD2
  static const int F22 = 65491; // 0xFFD3
  static const int F23 = 65492; // 0xFFD4
  static const int F24 = 65493; // 0xFFD5

  // Modifiers
  static const int SHIFT = 65505; // 0xFFE1 (Left Shift)
  static const int SHIFT_L = 65505; // 0xFFE1
  static const int SHIFT_R = 65506; // 0xFFE2
  static const int CONTROL = 65507; // 0xFFE3 (Left Control)
  static const int CONTROL_L = 65507; // 0xFFE3
  static const int CONTROL_R = 65508; // 0xFFE4
  static const int CAPS_LOCK = 65509; // 0xFFE5
  static const int SHIFT_LOCK = 65510; // 0xFFE6
  static const int META = 65511; // 0xFFE7 (Left Meta)
  static const int META_L = 65511; // 0xFFE7
  static const int META_R = 65512; // 0xFFE8
  static const int ALT = 65513; // 0xFFE9 (Left Alt)
  static const int ALT_L = 65513; // 0xFFE9
  static const int ALT_R = 65514; // 0xFFEA
  static const int ALT_GRAPH = 65027; // AltGr
  static const int SUPER_L = 65515; // 0xFFEB (Left Windows/Super key)
  static const int SUPER_R = 65516; // 0xFFEC
  static const int HYPER_L = 65517; // 0xFFED
  static const int HYPER_R = 65518; // 0xFFEE

  // Navigation keys
  static const int BACKSPACE = 65288; // 0xFF08
  static const int BACK_SPACE = 65288; // Alias
  static const int TAB = 65289; // 0xFF09
  static const int LINEFEED = 65290; // 0xFF0A
  static const int CLEAR = 65291; // 0xFF0B
  static const int RETURN = 65293; // 0xFF0D
  static const int ENTER = 65293; // Alias for RETURN
  static const int PAUSE = 65299; // 0xFF13
  static const int SCROLL_LOCK = 65300; // 0xFF14
  static const int SYS_REQ = 65301; // 0xFF15
  static const int ESCAPE = 65307; // 0xFF1B
  static const int DELETE = 65535; // 0xFFFF

  // Cursor control
  static const int HOME = 65360; // 0xFF50
  static const int LEFT = 65361; // 0xFF51
  static const int UP = 65362; // 0xFF52
  static const int RIGHT = 65363; // 0xFF53
  static const int DOWN = 65364; // 0xFF54
  static const int PRIOR = 65365; // 0xFF55 (Page Up)
  static const int PAGE_UP = 65365; // 0xFF55
  static const int NEXT = 65366; // 0xFF56 (Page Down)
  static const int PAGE_DOWN = 65366; // 0xFF56
  static const int END = 65367; // 0xFF57
  static const int BEGIN = 65368; // 0xFF58

  // Misc functions
  static const int SELECT = 65376; // 0xFF60
  static const int PRINT = 65377; // 0xFF61
  static const int PRINTSCREEN = 65377; // Alias
  static const int EXECUTE = 65378; // 0xFF62
  static const int INSERT = 65379; // 0xFF63
  static const int UNDO = 65381; // 0xFF65
  static const int REDO = 65382; // 0xFF66
  static const int MENU = 65383; // 0xFF67
  static const int FIND = 65384; // 0xFF68
  static const int CANCEL = 65385; // 0xFF69
  static const int HELP = 65386; // 0xFF6A
  static const int BREAK = 65387; // 0xFF6B
  static const int MODE_SWITCH = 65406; // 0xFF7E
  static const int NUM_LOCK = 65407; // 0xFF7F

  // Keypad (numpad) keys
  static const int KP_SPACE = 65408; // 0xFF80
  static const int KP_TAB = 65417; // 0xFF89
  static const int KP_ENTER = 65421; // 0xFF8D
  static const int KP_F1 = 65425; // 0xFF91
  static const int KP_F2 = 65426; // 0xFF92
  static const int KP_F3 = 65427; // 0xFF93
  static const int KP_F4 = 65428; // 0xFF94
  static const int KP_HOME = 65429; // 0xFF95
  static const int KP_LEFT = 65430; // 0xFF96
  static const int KP_UP = 65431; // 0xFF97
  static const int KP_RIGHT = 65432; // 0xFF98
  static const int KP_DOWN = 65433; // 0xFF99
  static const int KP_PRIOR = 65434; // 0xFF9A
  static const int KP_PAGE_UP = 65434; // 0xFF9A
  static const int KP_NEXT = 65435; // 0xFF9B
  static const int KP_PAGE_DOWN = 65435; // 0xFF9B
  static const int KP_END = 65436; // 0xFF9C
  static const int KP_BEGIN = 65437; // 0xFF9D
  static const int KP_INSERT = 65438; // 0xFF9E
  static const int KP_DELETE = 65439; // 0xFF9F
  static const int KP_EQUAL = 65469; // 0xFFBD
  static const int KP_MULTIPLY = 65450; // 0xFFAA
  static const int KP_ADD = 65451; // 0xFFAB
  static const int KP_SEPARATOR = 65452; // 0xFFAC
  static const int KP_SUBTRACT = 65453; // 0xFFAD
  static const int KP_DECIMAL = 65454; // 0xFFAE
  static const int KP_DIVIDE = 65455; // 0xFFAF
  static const int KP_0 = 65456; // 0xFFB0
  static const int KP_1 = 65457; // 0xFFB1
  static const int KP_2 = 65458; // 0xFFB2
  static const int KP_3 = 65459; // 0xFFB3
  static const int KP_4 = 65460; // 0xFFB4
  static const int KP_5 = 65461; // 0xFFB5
  static const int KP_6 = 65462; // 0xFFB6
  static const int KP_7 = 65463; // 0xFFB7
  static const int KP_8 = 65464; // 0xFFB8
  static const int KP_9 = 65465; // 0xFFB9

  // Aliases for standard numpad operations
  static const int NUMPAD0 = 65456; // Same as KP_0
  static const int NUMPAD1 = 65457;
  static const int NUMPAD2 = 65458;
  static const int NUMPAD3 = 65459;
  static const int NUMPAD4 = 65460;
  static const int NUMPAD5 = 65461;
  static const int NUMPAD6 = 65462;
  static const int NUMPAD7 = 65463;
  static const int NUMPAD8 = 65464;
  static const int NUMPAD9 = 65465;
  static const int ADD = 65451; // Same as KP_ADD
  static const int SUBTRACT = 65453; // Same as KP_SUBTRACT
  static const int MULTIPLY = 65450; // Same as KP_MULTIPLY
  static const int DIVIDE = 65455; // Same as KP_DIVIDE
  static const int DECIMAL = 65454; // Same as KP_DECIMAL
  static const int SEPARATOR = 65452; // Same as KP_SEPARATOR

  // Media keys (XF86)
  static const int XF86_AUDIO_LOWER_VOLUME = 269025041; // 0x1008FF11
  static const int XF86_AUDIO_MUTE = 269025042; // 0x1008FF12
  static const int XF86_AUDIO_RAISE_VOLUME = 269025043; // 0x1008FF13
  static const int XF86_AUDIO_PLAY = 269025044; // 0x1008FF14
  static const int XF86_AUDIO_STOP = 269025045; // 0x1008FF15
  static const int XF86_AUDIO_PREV = 269025046; // 0x1008FF16
  static const int XF86_AUDIO_NEXT = 269025047; // 0x1008FF17
  static const int XF86_AUDIO_PAUSE = 269025073; // 0x1008FF31

  // Commonly used aliases
  static const int OPEN_BRACKET = 91; // Same as BRACKETLEFT
  static const int CLOSE_BRACKET = 93; // Same as BRACKETRIGHT
  static const int BACK_QUOTE = 96; // Same as GRAVE
  static const int BACK_SLASH = 92; // Same as BACKSLASH
  static const int QUOTE = 39; // Same as APOSTROPHE
  static const int EQUALS = 61; // Same as EQUAL
}

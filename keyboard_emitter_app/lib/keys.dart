/// X11 KeySym values mapping
/// These are the exact decimal values that X11 uses for keyboard keys
/// Based on /usr/include/X11/keysymdef.h
class Keys {
  // Lowercase letters (a-z): 97-122
  static const int A_LOWER = 97;
  static const int B_LOWER = 98;
  static const int C_LOWER = 99;
  static const int D_LOWER = 100;
  static const int E_LOWER = 101;
  static const int F_LOWER = 102;
  static const int G_LOWER = 103;
  static const int H_LOWER = 104;
  static const int I_LOWER = 105;
  static const int J_LOWER = 106;
  static const int K_LOWER = 107;
  static const int L_LOWER = 108;
  static const int M_LOWER = 109;
  static const int N_LOWER = 110;
  static const int O_LOWER = 111;
  static const int P_LOWER = 112;
  static const int Q_LOWER = 113;
  static const int R_LOWER = 114;
  static const int S_LOWER = 115;
  static const int T_LOWER = 116;
  static const int U_LOWER = 117;
  static const int V_LOWER = 118;
  static const int W_LOWER = 119;
  static const int X_LOWER = 120;
  static const int Y_LOWER = 121;
  static const int Z_LOWER = 122;

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
  static const int LESS = 60; // <
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

  // Function keys (0xFFBE - 0xFFC9)
  static const int F1 = 0xFFBE; // 65470
  static const int F2 = 0xFFBF; // 65471
  static const int F3 = 0xFFC0; // 65472
  static const int F4 = 0xFFC1; // 65473
  static const int F5 = 0xFFC2; // 65474
  static const int F6 = 0xFFC3; // 65475
  static const int F7 = 0xFFC4; // 65476
  static const int F8 = 0xFFC5; // 65477
  static const int F9 = 0xFFC6; // 65478
  static const int F10 = 0xFFC7; // 65479
  static const int F11 = 0xFFC8; // 65480
  static const int F12 = 0xFFC9; // 65481
  static const int F13 = 0xFFCA; // 65482
  static const int F14 = 0xFFCB; // 65483
  static const int F15 = 0xFFCC; // 65484
  static const int F16 = 0xFFCD; // 65485
  static const int F17 = 0xFFCE; // 65486
  static const int F18 = 0xFFCF; // 65487
  static const int F19 = 0xFFD0; // 65488
  static const int F20 = 0xFFD1; // 65489
  static const int F21 = 0xFFD2; // 65490
  static const int F22 = 0xFFD3; // 65491
  static const int F23 = 0xFFD4; // 65492
  static const int F24 = 0xFFD5; // 65493

  // Modifiers
  static const int SHIFT_L = 0xFFE1; // 65505
  static const int SHIFT_R = 0xFFE2; // 65506
  static const int CONTROL_L = 0xFFE3; // 65507
  static const int CONTROL_R = 0xFFE4; // 65508
  static const int CAPS_LOCK = 0xFFE5; // 65509
  static const int SHIFT_LOCK = 0xFFE6; // 65510
  static const int META_L = 0xFFE7; // 65511
  static const int META_R = 0xFFE8; // 65512
  static const int ALT_L = 0xFFE9; // 65513
  static const int ALT_R = 0xFFEA; // 65514
  static const int SUPER_L = 0xFFEB; // 65515
  static const int SUPER_R = 0xFFEC; // 65516
  static const int HYPER_L = 0xFFED; // 65517
  static const int HYPER_R = 0xFFEE; // 65518

  // Navigation keys
  static const int BACKSPACE = 0xFF08; // 65288
  static const int TAB = 0xFF09; // 65289
  static const int LINEFEED = 0xFF0A; // 65290
  static const int CLEAR = 0xFF0B; // 65291
  static const int RETURN = 0xFF0D; // 65293
  static const int PAUSE = 0xFF13; // 65299
  static const int SCROLL_LOCK = 0xFF14; // 65300
  static const int SYS_REQ = 0xFF15; // 65301
  static const int ESCAPE = 0xFF1B; // 65307
  static const int DELETE = 0xFFFF; // 65535

  // Cursor control
  static const int HOME = 0xFF50; // 65360
  static const int LEFT = 0xFF51; // 65361
  static const int UP = 0xFF52; // 65362
  static const int RIGHT = 0xFF53; // 65363
  static const int DOWN = 0xFF54; // 65364
  static const int PRIOR = 0xFF55; // 65365 (Page Up)
  static const int PAGE_UP = 0xFF55; // 65365
  static const int NEXT = 0xFF56; // 65366 (Page Down)
  static const int PAGE_DOWN = 0xFF56; // 65366
  static const int END = 0xFF57; // 65367
  static const int BEGIN = 0xFF58; // 65368

  // Misc functions
  static const int SELECT = 0xFF60; // 65376
  static const int PRINT = 0xFF61; // 65377
  static const int EXECUTE = 0xFF62; // 65378
  static const int INSERT = 0xFF63; // 65379
  static const int UNDO = 0xFF65; // 65381
  static const int REDO = 0xFF66; // 65382
  static const int MENU = 0xFF67; // 65383
  static const int FIND = 0xFF68; // 65384
  static const int CANCEL = 0xFF69; // 65385
  static const int HELP = 0xFF6A; // 65386
  static const int BREAK = 0xFF6B; // 65387
  static const int MODE_SWITCH = 0xFF7E; // 65406
  static const int NUM_LOCK = 0xFF7F; // 65407

  // Keypad (numpad) keys
  static const int KP_SPACE = 0xFF80; // 65408
  static const int KP_TAB = 0xFF89; // 65417
  static const int KP_ENTER = 0xFF8D; // 65421
  static const int KP_F1 = 0xFF91; // 65425
  static const int KP_F2 = 0xFF92; // 65426
  static const int KP_F3 = 0xFF93; // 65427
  static const int KP_F4 = 0xFF94; // 65428
  static const int KP_HOME = 0xFF95; // 65429
  static const int KP_LEFT = 0xFF96; // 65430
  static const int KP_UP = 0xFF97; // 65431
  static const int KP_RIGHT = 0xFF98; // 65432
  static const int KP_DOWN = 0xFF99; // 65433
  static const int KP_PRIOR = 0xFF9A; // 65434
  static const int KP_PAGE_UP = 0xFF9A; // 65434
  static const int KP_NEXT = 0xFF9B; // 65435
  static const int KP_PAGE_DOWN = 0xFF9B; // 65435
  static const int KP_END = 0xFF9C; // 65436
  static const int KP_BEGIN = 0xFF9D; // 65437
  static const int KP_INSERT = 0xFF9E; // 65438
  static const int KP_DELETE = 0xFF9F; // 65439
  static const int KP_EQUAL = 0xFFBD; // 65469
  static const int KP_MULTIPLY = 0xFFAA; // 65450
  static const int KP_ADD = 0xFFAB; // 65451
  static const int KP_SEPARATOR = 0xFFAC; // 65452
  static const int KP_SUBTRACT = 0xFFAD; // 65453
  static const int KP_DECIMAL = 0xFFAE; // 65454
  static const int KP_DIVIDE = 0xFFAF; // 65455
  static const int KP_0 = 0xFFB0; // 65456
  static const int KP_1 = 0xFFB1; // 65457
  static const int KP_2 = 0xFFB2; // 65458
  static const int KP_3 = 0xFFB3; // 65459
  static const int KP_4 = 0xFFB4; // 65460
  static const int KP_5 = 0xFFB5; // 65461
  static const int KP_6 = 0xFFB6; // 65462
  static const int KP_7 = 0xFFB7; // 65463
  static const int KP_8 = 0xFFB8; // 65464
  static const int KP_9 = 0xFFB9; // 65465

  // Media keys
  static const int XF86_AUDIO_LOWER_VOLUME = 0x1008FF11; // 269025041
  static const int XF86_AUDIO_MUTE = 0x1008FF12; // 269025042
  static const int XF86_AUDIO_RAISE_VOLUME = 0x1008FF13; // 269025043
  static const int XF86_AUDIO_PLAY = 0x1008FF14; // 269025044
  static const int XF86_AUDIO_STOP = 0x1008FF15; // 269025045
  static const int XF86_AUDIO_PREV = 0x1008FF16; // 269025046
  static const int XF86_AUDIO_NEXT = 0x1008FF17; // 269025047
  static const int XF86_AUDIO_PAUSE = 0x1008FF31; // 269025073
}

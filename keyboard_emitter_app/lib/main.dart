import 'package:flutter/material.dart';

// ============================================
// 1. CUSTOM KEYBOARD WIDGET
// ============================================
class CustomKeyboard extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final int? maxLength;
  final VoidCallback? onSubmit;

  const CustomKeyboard({
    Key? key,
    required this.controller,
    this.obscureText = false,
    this.maxLength,
    this.onSubmit,
  }) : super(key: key);

  void _onNumberPressed(String number) {
    if (maxLength != null && controller.text.length >= maxLength!) {
      return;
    }
    controller.text += number;
  }

  void _onBackspace() {
    if (controller.text.isNotEmpty) {
      controller.text = controller.text.substring(0, controller.text.length - 1);
    }
  }

  void _onSubmitPressed() {
    if (onSubmit != null) {
      onSubmit!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Row 1: 1, 2, 3
        _buildKeyRow(['1', '2', '3']),
        const SizedBox(height: 12),
        // Row 2: 4, 5, 6
        _buildKeyRow(['4', '5', '6']),
        const SizedBox(height: 12),
        // Row 3: 7, 8, 9
        _buildKeyRow(['7', '8', '9']),
        const SizedBox(height: 12),
        // Row 4: @, 0, Submit
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildKeyButton(
              child: const Icon(Icons.alternate_email, color: Color(0xFF546E7A)),
              onPressed: () {},
            ),
            const SizedBox(width: 16),
            _buildKeyButton(
              child: const Text(
                '0',
                style: TextStyle(fontSize: 24, color: Color(0xFF546E7A)),
              ),
              onPressed: () => _onNumberPressed('0'),
            ),
            const SizedBox(width: 16),
            _buildKeyButton(
              child: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: _onSubmitPressed,
              backgroundColor: const Color(0xFF1B5E20),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildKeyRow(List<String> numbers) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: numbers.map((number) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: _buildKeyButton(
            child: Text(
              number,
              style: const TextStyle(fontSize: 24, color: Color(0xFF546E7A)),
            ),
            onPressed: () => _onNumberPressed(number),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildKeyButton({
    required Widget child,
    required VoidCallback onPressed,
    Color? backgroundColor,
  }) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0xFFECEFF1),
        shape: BoxShape.circle,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: Center(child: child),
        ),
      ),
    );
  }
}

// ============================================
// 2. GENERIC DIALOG WITH KEYBOARD
// ============================================
class KeyboardDialog extends StatefulWidget {
  final IconData headerIcon;
  final String title;
  final String placeholder;
  final bool obscureText;
  final int? maxLength;
  final Function(String)? onSubmit;
  final Color? headerIconColor;
  final Color? submitButtonColor;

  const KeyboardDialog({
    Key? key,
    required this.headerIcon,
    required this.title,
    this.placeholder = '',
    this.obscureText = false,
    this.maxLength,
    this.onSubmit,
    this.headerIconColor,
    this.submitButtonColor,
  }) : super(key: key);

  @override
  State<KeyboardDialog> createState() => _KeyboardDialogState();
}

class _KeyboardDialogState extends State<KeyboardDialog> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    if (widget.onSubmit != null) {
      widget.onSubmit!(_controller.text);
    }
    Navigator.of(context).pop(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header with icon and close button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  widget.headerIcon,
                  color: widget.headerIconColor ?? const Color(0xFF1B5E20),
                  size: 28,
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Color(0xFF546E7A)),
                  onPressed: () => Navigator.of(context).pop(),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Title
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF263238),
              ),
            ),
            const SizedBox(height: 24),

            // Input Display
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFECEFF1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: _controller,
                      builder: (context, value, child) {
                        if (value.text.isEmpty) {
                          return Text(
                            widget.placeholder,
                            style: const TextStyle(
                              color: Color(0xFF90A4AE),
                              fontSize: 16,
                            ),
                          );
                        }
                        return Text(
                          widget.obscureText ? '•' * value.text.length : value.text,
                          style: const TextStyle(
                            color: Color(0xFF263238),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      },
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.backspace_outlined,
                      color: Color(0xFF455A64),
                    ),
                    onPressed: () {
                      if (_controller.text.isNotEmpty) {
                        _controller.text = _controller.text.substring(
                          0,
                          _controller.text.length - 1,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Custom Keyboard
            CustomKeyboard(
              controller: _controller,
              obscureText: widget.obscureText,
              maxLength: widget.maxLength,
              onSubmit: _handleSubmit,
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================
// 3. EXAMPLE USAGE - MAIN SCREEN
// ============================================
class CashierLoginScreen extends StatelessWidget {
  const CashierLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // User Icon
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFFB0BEC5),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person,
                size: 40,
                color: Color(0xFFD32F2F),
              ),
            ),
            const SizedBox(height: 24),

            // Title
            const Text(
              'Ingresar Cajero',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xFF263238),
              ),
            ),
            const SizedBox(height: 48),

            // Login Button
            ElevatedButton(
              onPressed: () => _showUserDialog(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF455A64),
                padding: const EdgeInsets.symmetric(
                  horizontal: 48,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Ingresar Usuario',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showUserDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => KeyboardDialog(
        headerIcon: Icons.lock_outline,
        title: 'USUARIO',
        placeholder: 'Ingrese usuario',
        maxLength: 10,
        onSubmit: (value) {
          // After user input, show password dialog
          Future.delayed(const Duration(milliseconds: 300), () {
            _showPasswordDialog(context, value);
          });
        },
      ),
    );
  }

  void _showPasswordDialog(BuildContext context, String username) {
    showDialog(
      context: context,
      builder: (context) => KeyboardDialog(
        headerIcon: Icons.lock,
        title: 'Autorización Supervisor',
        placeholder: 'CONTRASEÑA',
        obscureText: true,
        headerIconColor: const Color(0xFF1B5E20),
        submitButtonColor: const Color(0xFF1B5E20),
        onSubmit: (password) {
          // Handle login
          print('Username: $username, Password: $password');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Login: $username'),
              backgroundColor: Colors.green,
            ),
          );
        },
      ),
    );
  }
}

// ============================================
// 4. APP ENTRY POINT
// ============================================
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Keyboard Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const CashierLoginScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'keyboard_emitter.dart';
// import 'keys.dart';

// void main() {
//   runApp(KeyBoardApp());
// }

// class KeyBoardApp extends StatelessWidget {
//   final KeyboardEmitter _keyboardEmitter = KeyboardEmitter();

//   KeyBoardApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Keyboard Emitter'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               // Emit key 'A' (key code 65)
//               _keyboardEmitter.pressKey(Keys.A);
//             },
//             child: const Text('Press A Key'),
//           ),
//         ),
//       ),
//     );
//   }
// }

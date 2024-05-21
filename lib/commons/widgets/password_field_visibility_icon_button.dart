import 'package:flutter/material.dart';

class PasswordFieldVisibilityIconButton extends StatelessWidget {
  const PasswordFieldVisibilityIconButton({
    super.key,
    required this.obscureText,
    required this.onTap,
  });

  final bool obscureText;
  final ValueChanged<bool> onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: obscureText
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility),
      onPressed: () {
        onTap(!obscureText);
      },
    );
  }
}

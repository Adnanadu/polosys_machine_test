import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final bool isOutlined;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon != null ? Icon(icon, size: 20) : const SizedBox.shrink(),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: isOutlined ? Colors.white : const Color(0xFF6A11CB),
        foregroundColor: isOutlined ? Colors.black : Colors.white,
        side: isOutlined
            ? const BorderSide(color: Color(0xFF6A11CB))
            : BorderSide.none,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      ),
    );
  }
}

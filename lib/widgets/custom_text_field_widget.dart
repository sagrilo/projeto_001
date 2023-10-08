import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Function(String) onChanged;
  final String label;
  final bool obscureText;

  const CustomTextFieldWidget({
    super.key,
    required this.label,
    required this.onChanged,
    this.obscureText = false
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(label),
      ),
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}

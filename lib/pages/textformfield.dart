import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator; // Validator Function

  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: Icon(icon, color: Colors.black54),
          filled: true,
          fillColor: Colors.transparent,
        ),
        validator: validator, // ✅ Apply Validator
      ),
    );
  }
}

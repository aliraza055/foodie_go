import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

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
    return TextFormField(
     controller: controller,
     obscureText: obscureText,
     decoration: InputDecoration(
       hintText: hintText,
       border:OutlineInputBorder(
         borderSide: BorderSide.none,
         borderRadius: BorderRadius.circular(10)
       ),
       prefixIcon: Icon(icon, color: Colors.black54),
       filled: true,
       fillColor: Colors.grey[200],
     ),
     validator: validator, 
              );
  }
}
class TextFromFeil extends StatelessWidget {
  final  controller;
  final String  hinttext;
  const TextFromFeil({required this.controller,required this.hinttext, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText:hinttext,
        filled: true,
        fillColor: Colors.black 
      ),
    );
  }
}

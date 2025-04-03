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
  final IconData prefxIcon;
  final String  hinttext;
  final String? Function(String?) validatr;
  const TextFromFeil({required this.controller,required this.validatr,required this.prefxIcon,required this.hinttext, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validatr,
      decoration: InputDecoration(
        hintText:hinttext,
        filled: true,
        fillColor: Colors.black ,
        prefixIcon: Icon(prefxIcon) ,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );
  }
}

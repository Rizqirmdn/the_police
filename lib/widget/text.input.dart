import 'package:flutter/material.dart';

class TextFormInput extends StatelessWidget {
  final TextEditingController controller;
  final Icon prefixIcon;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;

  TextFormInput({
    this.controller,
    this.prefixIcon,
    this.hintText,
    this.obscureText,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}

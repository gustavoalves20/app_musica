import 'package:flutter/material.dart';

class MyTextFieldTheme {
  static InputDecoration textFieldDecoration ({
    String hintText = '',
    EdgeInsetsGeometry contentPadding = const EdgeInsets.all(10),
    Color borderColor = Colors.grey,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      contentPadding: contentPadding,
      prefixIcon: prefixIcon,
      suffix: suffixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: borderColor),
      ),
    );
  }
}
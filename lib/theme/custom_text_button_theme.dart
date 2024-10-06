import 'package:flutter/material.dart';

class CustomTextButtonTheme {
  static TextButton textButtonDecoration({
    required String text,
    required VoidCallback onPressed,
    Color textColor = Colors.grey,
    double fontsize = 12,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        textStyle: TextStyle(
          fontSize: fontsize,         
        ),
        foregroundColor: textColor,
      ), child: Text(text),
    );
  }
}

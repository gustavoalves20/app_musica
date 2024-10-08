import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';

class CustomButtonTheme {
  static ElevatedButton buttonDecoration({
    required String text,
    required VoidCallback onPressed,
    Color? backgroundColor,
    Color? textColor,
    double fontsize = 14,
    double height = 40,
    double width = double.infinity,
  }) {
    backgroundColor ??= CustomColor.bgPrimary;
    textColor ??= CustomColor.textPrimary;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 16),
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: fontsize,
        ),
      ),
    );
  }
}

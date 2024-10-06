import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';

class MyTextFieldTheme {
  static InputDecoration textFieldDecoration ({
    String hintText = '',
    EdgeInsetsGeometry contentPadding = const EdgeInsets.all(20),
    Color? borderColor,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    borderColor ??= CustomColor.bgUnfocus;
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: CustomColor.textPrimary),
      contentPadding: contentPadding,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: CustomColor.bgFocus),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: CustomColor.bgUnfocus)
      )
    );
  }
}
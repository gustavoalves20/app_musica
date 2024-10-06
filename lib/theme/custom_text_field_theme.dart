import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';

class CustomTextFieldTheme {
  static InputDecoration textFieldDecoration ({
    String hintText = '',
    EdgeInsetsGeometry contentPadding = const EdgeInsets.all(20),
    Color? borderColor,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Color? suffixIconColor,
  }) {
    borderColor ??= CustomColor.bgPrimary;
    suffixIconColor ??= CustomColor.textPrimary;
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: CustomColor.textPrimary),
      contentPadding: contentPadding,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      suffixIconColor: suffixIconColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: CustomColor.bgPrimary),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: CustomColor.bgGrey)
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final EdgeInsetsGeometry contentPadding;
  final Color? borderColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final Color? cursorColor;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    this.hintText = '',
    this.controller,
    this.obscureText = false,
    this.contentPadding = const EdgeInsets.all(20),
    this.borderColor,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.cursorColor,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    final Color borderClr = borderColor ?? CustomColor.bgPrimary;
    final Color suffixColor = suffixIconColor ?? CustomColor.textWhite;
    final Color cursorClr = cursorColor ?? CustomColor.textWhite;

    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      cursorColor: cursorClr,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: CustomColor.textWhite),
        contentPadding: contentPadding,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: borderClr),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: CustomColor.textGrey),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:nusic/theme/custom_text_style_theme.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double fontsize;
  final double height;
  final double width;
  
  const CustomButton({
    super.key, 
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.fontsize = 16,
    this.height = 40,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    backgroundColor ?? CustomColor.bgPrimary;
    textColor ?? CustomColor.textWhite;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.bgPrimary,
        padding: const EdgeInsets.symmetric(vertical: 16),
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: CustomTextStyleTheme.title,
      ),
    );
  }
}

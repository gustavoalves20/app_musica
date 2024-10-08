import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nusic/shared/custom_color.dart';

class CustomTextStyleTheme {
  static TextStyle title = GoogleFonts.ptSans(
    textStyle: TextStyle(
      fontSize: 16,
      color: CustomColor.textPrimary,
      fontWeight: FontWeight.bold,
    ),
  );

  static TextStyle subtitle = GoogleFonts.ptSans(
    textStyle: TextStyle(
      fontSize: 14,
      color: CustomColor.textSecondary,
      fontWeight: FontWeight.bold,
    ),
  );
}
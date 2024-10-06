import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';

class CustomAppBarTheme {
  static AppBar appBarDecoration({
    required String title,
    Widget? leading,
    List<Widget>? actions,
  }) {
    return AppBar(
      backgroundColor: CustomColor.background,
      iconTheme: IconThemeData(color: CustomColor.textPrimary),
      elevation: 0,
      leading: leading,
      actions: actions,
      title: Text(
        title,
        style: TextStyle(
          color: CustomColor.textPrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

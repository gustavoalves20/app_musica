import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:nusic/theme/custom_text_field_theme.dart';

class EmailRegisterTextField extends StatelessWidget {
  const EmailRegisterTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextField(
        controller: _emailController,
        cursorColor: CustomColor.textPrimary,
        decoration: CustomTextFieldTheme.textFieldDecoration(
          hintText: 'Email',
        ),
      ),
    );
  }
}
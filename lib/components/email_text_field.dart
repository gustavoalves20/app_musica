import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:nusic/theme/custom_text_field_theme.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        cursorColor: CustomColor.textPrimary,
        controller: _emailController,
        decoration: CustomTextFieldTheme.textFieldDecoration(
          hintText: 'Email',
          borderColor: CustomColor.bgPrimary,
          contentPadding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        ),
      ),
    );
  }
}

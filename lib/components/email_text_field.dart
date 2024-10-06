import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:nusic/theme/my_text_field_theme.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: _emailController,
        decoration: MyTextFieldTheme.textFieldDecoration(
          hintText: 'Email',
          borderColor: CustomColor.bgFocus,
          contentPadding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        ),
      ),
    );
  }
}

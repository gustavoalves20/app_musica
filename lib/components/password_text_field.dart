import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:nusic/theme/custom_text_field_theme.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: TextField(
        cursorColor: CustomColor.textPrimary,
        controller: _passwordController,
        decoration: CustomTextFieldTheme.textFieldDecoration(
          hintText: 'Senha',
          borderColor: CustomColor.bgPrimary,
          contentPadding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.visibility,
            ),
          ),
        ),
      ),
    );
  }
}

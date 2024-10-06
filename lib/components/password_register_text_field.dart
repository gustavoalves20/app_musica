import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:nusic/theme/custom_text_field_theme.dart';

class PasswordRegisterTextField extends StatelessWidget {
  const PasswordRegisterTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Padding(   
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextField(
        controller: _passwordController,
        obscureText: true,
        cursorColor: CustomColor.textPrimary,
        decoration: CustomTextFieldTheme.textFieldDecoration(
          hintText: 'Senha',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.visibility),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:nusic/theme/my_text_field_theme.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: TextField(
        controller: _passwordController,
        decoration: MyTextFieldTheme.textFieldDecoration(
          hintText: 'Senha',
          borderColor: CustomColor.bgFocus,
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

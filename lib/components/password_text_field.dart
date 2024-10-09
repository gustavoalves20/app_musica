import 'package:flutter/material.dart';
import 'package:nusic/components/custom_text_field.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: CustomTextField(
        hintText: 'Senha',
        obscureText: true,
        controller: _passwordController,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.visibility),
        ),
      ),
    );
  }
}

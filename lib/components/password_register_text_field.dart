import 'package:flutter/material.dart';
import 'package:nusic/components/custom_text_field.dart';

class PasswordRegisterTextField extends StatelessWidget {
  const PasswordRegisterTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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

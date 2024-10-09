import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class EmailRegisterTextField extends StatelessWidget {
  const EmailRegisterTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: CustomTextField(
        controller: _emailController,
        hintText: 'Email',
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:nusic/components/custom_text_field.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomTextField(
        hintText: 'Email',
        controller: _emailController,
      ),
    );
  }
}

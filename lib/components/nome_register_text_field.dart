import 'package:flutter/material.dart';
import 'package:nusic/components/custom_text_field.dart';

class NomeRegisterTextField extends StatelessWidget {
  const NomeRegisterTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: CustomTextField(
        hintText: 'Email',
        controller: _nameController,
      ),
    );
  }
}

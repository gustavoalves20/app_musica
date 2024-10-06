import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:nusic/theme/custom_text_field_theme.dart';

class NomeRegisterTextField extends StatelessWidget {
  const NomeRegisterTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextField(
        controller: _nameController,
        cursorColor: CustomColor.textPrimary,
        decoration: CustomTextFieldTheme.textFieldDecoration(
          hintText: 'Nome',
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nusic/components/custom_button.dart';

class ButtonRegister extends StatelessWidget {
  const ButtonRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: CustomButton(
        onPressed: () => Navigator.pop(context),
        text: 'Cadastrar',
      ),
    );
  }
}
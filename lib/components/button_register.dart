import 'package:flutter/material.dart';
import 'package:nusic/controller/button_register_controller.dart';
import 'package:nusic/theme/custom_button_theme.dart';

class ButtonRegister extends StatelessWidget {
  const ButtonRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: CustomButtonTheme.buttonDecoration(
        onPressed: () => ButtonRegisterController.navigateLogin(context),
        text: 'Cadastrar',
        fontsize: 16,
      ),
    );
  }
}
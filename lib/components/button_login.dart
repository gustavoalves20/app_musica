import 'package:flutter/material.dart';
import 'package:nusic/controller/button_login_controller.dart';
import 'package:nusic/theme/custom_button_theme.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomButtonTheme.buttonDecoration(
        onPressed: () => ButtonLoginController.navigateHome(context),
        text: 'LOGIN',
        fontsize: 16,
      ),
    );
  }
}
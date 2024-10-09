import 'package:flutter/material.dart';
import 'package:nusic/controller/button_login_controller.dart';

import 'custom_button.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomButton(
        onPressed: () => ButtonLoginController.navigateHome(context),
        text: 'LOGIN',
      ),
    );
  }
}
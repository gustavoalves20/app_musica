import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nusic/controller/text_register.dart';
import 'package:nusic/shared/custom_color.dart';

class ButtonRegister extends StatelessWidget {
  const ButtonRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Não tem conta? ',
        style: TextStyle(color: CustomColor.textWhite),
        children: [
          TextSpan(
            text: 'Criar conta',
            style: TextStyle(
              color: CustomColor.bgPrimary,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap =() => ButtonRegisterController.navigateRegister(context),
          ),
        ],
      ),
    );
  }
}

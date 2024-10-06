import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:nusic/theme/custom_text_button_theme.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomTextButton.textButtonDecoration(
            onPressed: () {},
            text: 'Esqueci a senha',
            textColor: CustomColor.textOrange,        
          ),
        ],
      ),
    );
  }
}

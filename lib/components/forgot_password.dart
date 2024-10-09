import 'package:flutter/material.dart';
import '../shared/custom_color.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Esqueci a senha',
              style: TextStyle(fontSize: 12, color: CustomColor.textOrange),
            ),
          ),
        ],
      ),
    );
  }
}

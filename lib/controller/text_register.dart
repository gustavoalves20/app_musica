import 'package:flutter/material.dart';

class ButtonRegisterController {
  static void navigateRegister(BuildContext context) {
    Navigator.of(context).pushNamed('/register');
  }
}
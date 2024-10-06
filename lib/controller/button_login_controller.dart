import 'package:flutter/material.dart';

class ButtonLoginController{
  static void navigateHome(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/home');
  }
}
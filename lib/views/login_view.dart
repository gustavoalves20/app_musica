// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nusic/components/button_login.dart';
import 'package:nusic/components/text_register.dart';
import 'package:nusic/components/email_text_field.dart';
import 'package:nusic/components/forgot_password.dart';
import 'package:nusic/components/logo.dart';
import 'package:nusic/components/password_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Logo(),
              const EmailTextField(),
              const PasswordTextField(),
              const ForgotPassword(),
              const ButtonLogin(),
            ],
          ),
          const ButtonRegister(),
        ],
      ),
    );
  }
}

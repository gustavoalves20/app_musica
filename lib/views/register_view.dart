// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nusic/components/button_register.dart';
import 'package:nusic/components/email_register_text_field.dart';
import 'package:nusic/components/nome_register_text_field.dart';
import 'package:nusic/components/password_register_text_field.dart';
import 'package:nusic/theme/custom_app_bar_theme.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTheme.appBarDecoration(
        title: 'Faça seu cadastro',
      ),
      body: Column(
        children: [
          NomeRegisterTextField(),
          EmailRegisterTextField(),
          PasswordRegisterTextField(),
          ButtonRegister(),
        ],
      ),
    );
  }
}
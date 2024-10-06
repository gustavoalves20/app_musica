import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';
class MyAppBarTheme {
  static AppBar get appBarDecoration {
    return AppBar(
      backgroundColor: CustomColor.background,
      iconTheme: IconThemeData(color: CustomColor.textPrimary),
      elevation: 0,
      leading: const Padding(
        padding:  EdgeInsets.only(left: 5),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/eu.jpg'),
        ),
      ),
      title: Text(
        'Olá, Gustavo',
        style: TextStyle(
          color: CustomColor.textPrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings_outlined),
        ),
      ],
    );
  }
}

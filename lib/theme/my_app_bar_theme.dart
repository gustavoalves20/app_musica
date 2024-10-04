import 'package:flutter/material.dart';

class MyAppBarTheme {
  static AppBar get appBarDecoration {
    return AppBar(
      elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/eu.jpg'),
        ),
      ),
      title: const Text(
        'Olá, Gustavo',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.brightness_4_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings_rounded),
        ),
      ],
    );
  }
}

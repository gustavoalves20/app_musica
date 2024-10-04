import 'package:flutter/material.dart';

class MyBottomBar {
  static BottomNavigationBar bottomNavBarDecoration({
    required int currentIndex,
    required Function(int) onTap,
  }) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.black,
      unselectedItemColor: const Color(0xFFBDBCC5),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: 'Início',
          icon: Icon(Icons.home_rounded),
        ),
        BottomNavigationBarItem(
          label: 'Categorias',
          icon: Icon(Icons.tune_rounded),
        ),
        BottomNavigationBarItem(
          label: 'Biblioteca',
          icon: Icon(Icons.library_music_rounded),
        ),
        BottomNavigationBarItem(
          label: 'Conta',
          icon: Icon(Icons.account_circle_rounded),
        ),
      ],
    );
  }
}

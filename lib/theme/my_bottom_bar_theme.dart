import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';

class MyBottomBar {
  static BottomNavigationBar bottomNavBarDecoration({
    required int currentIndex,
    required Function(int) onTap,
  }) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: CustomColor.background,
      selectedItemColor: CustomColor.bgFocus,
      unselectedItemColor: CustomColor.bgUnfocus,
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

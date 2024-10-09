import 'package:flutter/material.dart';
import 'package:nusic/controller/bottom_bar_controller.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:provider/provider.dart';

class BottomBarContainer extends StatelessWidget {
  const BottomBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomBarController = Provider.of<BottomBarController>(context);

    return Container(
      decoration: const BoxDecoration(
        boxShadow:  [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5,
            offset: Offset(0, -3),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: bottomBarController.selectedIndex,
        onTap: (index) => bottomBarController.onNavBarTap(index),
        backgroundColor: CustomColor.background,
        selectedItemColor: CustomColor.bgPrimary,
        unselectedItemColor: CustomColor.textGrey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: 'Início',
            icon: Icon(Icons.home_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Músicas',
            icon: Icon(Icons.music_note_rounded),
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
      ),
    );
  }
}

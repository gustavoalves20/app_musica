import 'package:flutter/material.dart';
import 'package:nusic/controller/bottom_bar_controller.dart';
import 'package:nusic/theme/my_bottom_bar_theme.dart';
import 'package:provider/provider.dart';

class BottomBarContainer extends StatelessWidget {
  const BottomBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomBarController = Provider.of<BottomBarController>(context);
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5,
            offset: Offset(0, -3),
          ),
        ],
      ),
      child: MyBottomBar.bottomNavBarDecoration(
        currentIndex: bottomBarController.currentIndex,
        onTap: bottomBarController.onNavBarTap,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:nusic/controller/bottom_bar_controller.dart';
import 'package:nusic/theme/my_app_bar_theme.dart';
import 'package:nusic/theme/my_bottom_bar_theme.dart';
import 'package:nusic/theme/my_text_field_theme.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final bottomBarController = Provider.of<BottomBarController>(context);

    return Scaffold(
      appBar: MyAppBarTheme.appBarDecoration,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextField(
              cursorColor: Colors.black,
              decoration: MyTextFieldTheme.textFieldDecoration,
            ),
          ),
        ],
      ),
      bottomNavigationBar:MyBottomBar.bottomNavBarDecoration(
        currentIndex: bottomBarController.currentIndex,
        onTap: bottomBarController.onNavBarTap,
      ),
    );
  }
}

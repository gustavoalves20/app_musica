import 'package:flutter/material.dart';
import 'package:nusic/components/bottom_bar_container.dart';
import 'package:nusic/controller/bottom_bar_controller.dart';

import 'package:nusic/theme/my_app_bar_theme.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    //var h = MediaQuery.of(context).size.height;
    //var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: MyAppBarTheme.appBarDecoration,
      body: Consumer<BottomBarController>(
        builder: (context, value, child) {
          return const Column(
            children: [],
          );
        },
      ),
      bottomNavigationBar: const BottomBarContainer(),
    );
  }
}

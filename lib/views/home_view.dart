import 'package:flutter/material.dart';
import 'package:nusic/components/bottom_bar_container.dart';
import 'package:nusic/controller/bottom_bar_controller.dart';
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
      body: PageView(
        controller: Provider.of<BottomBarController>(context).pageController,
        onPageChanged: (index) => bottomBarController.onNavBarTap(index),
        children: [...bottomBarController.onList()],
      ),
      bottomNavigationBar: const BottomBarContainer(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nusic/components/bottom_bar_container.dart';
import 'package:nusic/controller/bottom_bar_controller.dart';

import 'package:nusic/theme/custom_app_bar_theme.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTheme.appBarDecoration(
        leading: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: CircleAvatar(backgroundImage: AssetImage('assets/eu.jpg')),
        ),
        title: 'Olá, Gustavo',
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_rounded),
          ),
        ],
      ),
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

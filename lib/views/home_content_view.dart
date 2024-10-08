import 'package:flutter/material.dart';
import 'package:nusic/theme/custom_app_bar_theme.dart';

class HomeContentView extends StatefulWidget {
  const HomeContentView({super.key});

  @override
  State<HomeContentView> createState() => _HomeContentViewState();
}

class _HomeContentViewState extends State<HomeContentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTheme.appBarDecoration(
        title: 'Olá, Gustavo',
        leading: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/eu.jpg'),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class HomeContentView extends StatefulWidget {
  const HomeContentView({super.key});

  @override
  State<HomeContentView> createState() => _HomeContentViewState();
}

class _HomeContentViewState extends State<HomeContentView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  CustomAppBar(
        title: 'Olá, Gustavo',
        leading: Padding(
          padding: EdgeInsets.only(left: 8),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/eu.jpg'),
          ),
        ),
      ),
    );
  }
}
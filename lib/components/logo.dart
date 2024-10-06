import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Image.asset(
      'assets/logo.png',
      height: h * 0.3,
    );
  }
}
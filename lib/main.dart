import 'package:flutter/material.dart';
import 'package:nusic/controller/bottom_bar_controller.dart';
import 'package:nusic/views/my_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomBarController()),
      ],
      child: const MyApp(),
    ),
  );
}

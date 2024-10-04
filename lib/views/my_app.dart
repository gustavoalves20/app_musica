import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nusic/views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nusic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(      
        textTheme: GoogleFonts.ptSansTextTheme().copyWith(),
        useMaterial3: true,
      ),
      home: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: const HomeView(),
      ),
    );
  }
}

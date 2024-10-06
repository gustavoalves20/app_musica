import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nusic/routes/app_routes.dart';
import 'package:nusic/routes/name_route.dart';
import 'package:nusic/shared/custom_color.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nusic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        textTheme: GoogleFonts.ptSansTextTheme(),
        scaffoldBackgroundColor: CustomColor.background,
      ),
      initialRoute: NameRoute.LOGIN,
      routes: AppRoutes.routes,
    );
  }
}

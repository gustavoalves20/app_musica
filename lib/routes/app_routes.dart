import 'package:flutter/material.dart';
import 'package:nusic/routes/name_route.dart';
import 'package:nusic/views/home_view.dart';
import 'package:nusic/views/login_view.dart';

class AppRoutes {

  static Map<String, WidgetBuilder> get routes {
    return {
      NameRoute.LOGIN:(context) => const LoginView(),
      NameRoute.HOME:(context) => const HomeView(),
    };
  }
}
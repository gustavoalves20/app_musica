import 'package:flutter/material.dart';
import 'package:nusic/views/home_content_view.dart';

import '../views/library_view.dart';
import '../views/profile_view.dart';
import '../views/search_view.dart';

class BottomBarController extends ChangeNotifier {
  int _selectedIndex = 0;
  final pageController = PageController();

  int get selectedIndex => _selectedIndex;

  void onNavBarTap(int index) {
    _selectedIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();
  }

  List onList() {
    return const [
      HomeContentView(),
      SearchView(),
      LibraryView(),
      ProfileView(),
    ];
  }
}

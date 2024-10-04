import 'package:flutter/material.dart';

class BottomBarController extends ChangeNotifier{
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void onNavBarTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
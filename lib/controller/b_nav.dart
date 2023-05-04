import 'package:flutter/material.dart';

import '../view/home/home_screen.dart';

class BNav with ChangeNotifier {
  int selectedIndex = 0;
  final List<Widget> tabs = [
    const HomeScreen(),
    const Food(),
    const InstaMart(),
    const DineOut(),
    const Genie()
  ];

  void changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}

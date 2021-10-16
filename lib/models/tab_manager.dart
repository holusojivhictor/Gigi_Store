import 'package:flutter/material.dart';

class TabManager extends ChangeNotifier {
  int selectedTab = 0;

  void goToTab(index) {
    selectedTab = index;

    notifyListeners();
  }

  void goToProfile(index) {
    selectedTab = 3;

    notifyListeners();
  }
}
import 'package:ambulance_mobile/screens/patient-history/history_screen.dart';
import 'package:ambulance_mobile/screens/home.dart';
import 'package:ambulance_mobile/screens/user-profile/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int _currentIndex = 0;
  Widget currentScreen = const HomeScreen();

  void updateIndex(int index) {
    _currentIndex = index;
    if (_currentIndex == 0) {
      currentScreen = const HomeScreen();
    } else if (_currentIndex == 1) {
      currentScreen = const HistoryScreen();
    } else {
      currentScreen = const ProfileScreen();
    }
    notifyListeners();
  }
}
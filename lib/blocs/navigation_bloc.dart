import 'package:flutter/material.dart';

class NavigationBloc extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;
  set selectedIndex(int val) {
    _selectedIndex = val;
    notifyListeners();
  }
}

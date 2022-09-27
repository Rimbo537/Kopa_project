import 'package:flutter/material.dart';

/// class to control bottom menu of [MainMenuScreen]
class BottomNotifier extends ChangeNotifier {

  int _childIndex = 0;

 int get childIndex => _childIndex;

  set childIndex(int tabIndex) {
    _childIndex = tabIndex;
    notifyListeners();
  }
}

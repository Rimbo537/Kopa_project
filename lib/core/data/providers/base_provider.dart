import 'package:copa_example/enums/states/notifier_state.dart';
import 'package:flutter/material.dart';

class BaseProvider with ChangeNotifier {
  NotifierState _state = NotifierState.initial;

  NotifierState get state => _state;

  void setNotifier(NotifierState state) {
    _state = state;
    notifyListeners();
  }
}
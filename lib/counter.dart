import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _conter = 0;

  int get counter => _conter;

  void increment() {
    if (counter < 10) {
      _conter++;
      notifyListeners();
    }
  }

  void decrement() {
    if (counter > 0) {
      _conter--;
      notifyListeners();
    }
  }
}

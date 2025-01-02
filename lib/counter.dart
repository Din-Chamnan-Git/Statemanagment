import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _conter = 0;

  int get counter => _conter;

  void incresment() {
    _conter++;
    notifyListeners();
  }
}

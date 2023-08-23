import 'package:flutter/material.dart';

class EstadoNumber with ChangeNotifier {
  int _number = 0;

  int get number {
    return _number;
  }

  void changeNumber(String signal) {
    switch (signal) {
      case '+':
        _number++;
        notifyListeners();
        break;
      case '-':
        _number--;
        notifyListeners();
      case 'X':
        _number = 0;
        notifyListeners();
      default:
    }
  }

}

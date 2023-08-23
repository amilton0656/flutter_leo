import 'package:flutter/material.dart';

class EstadoColor with ChangeNotifier {
  Color _color = Colors.blue;

  Color get color {
    return _color;
  }

  void changeColor(Color color) {
    _color = color;
    notifyListeners();
  }
}

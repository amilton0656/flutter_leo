import 'package:flutter/material.dart';

class EstadoConsumer with ChangeNotifier {
  final String _titulo = 'Título !!!';

  String get titulo {
    return _titulo;
  }
}

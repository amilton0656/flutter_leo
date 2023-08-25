import 'dart:math';

import 'package:flutter/material.dart';
import 'despesa_data.dart';
import 'despesa_model.dart';

class DespesasProvider with ChangeNotifier {
  List<Despesa> despesas = despesasData;

  void saveDespesa(Map<String, Object> registro) {

    final Despesa despesa = Despesa(
      id: Random().nextDouble().toString(), 
      descricao: registro['descricao'] as String, 
      valor: registro['valor'] as double,
      );

    despesas.add(despesa);

    notifyListeners();
  }

}

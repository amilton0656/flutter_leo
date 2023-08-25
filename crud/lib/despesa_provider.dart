import 'dart:math';

import 'package:flutter/material.dart';
import 'despesa_data.dart';
import 'despesa_model.dart';

class DespesasProvider with ChangeNotifier {
  List<Despesa> despesas = despesasData;

  void saveDespesa(Map<String, Object> registro) {
    final hasId = registro['id'] != null;

    final Despesa despesa = Despesa(
      id: hasId ? registro['id'].toString() : Random().nextDouble().toString(),
      descricao: registro['descricao'] as String,
      valor: registro['valor'] as double,
    );

    if (hasId) {
      updateDespesa(despesa);
    } else {
      addDespesa(despesa);
    }
    notifyListeners();
  }

  void addDespesa(Despesa despesa) {
    despesas.add(despesa);
  }

  void updateDespesa(Despesa despesa) {
    final index = despesas.indexWhere((element) => element.id == despesa.id);

    if (index >= 0) {
      despesas[index] = despesa;
    }
  }

  void removeDespesa(Despesa despesa) {
    final index = despesas.indexWhere((element) => element.id == despesa.id);

    if (index >= 0) {
      despesas.removeWhere((element) => element.id == despesa.id);
    }
    notifyListeners();
  }
}

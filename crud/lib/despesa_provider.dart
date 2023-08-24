import 'package:flutter/material.dart';
import 'despesa_data.dart';
import 'despesa_model.dart';

class DespesasProvider with ChangeNotifier {
  List<Despesa> despesas = despesasData;
}

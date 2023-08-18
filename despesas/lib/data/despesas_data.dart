import 'package:despesas/models/despesa_model.dart';

List<Despesa> despesas = [
  Despesa(
    id: 'd1',
    descricao: 'Lapiseira',
    valor: 25.68,
    data: DateTime.now().subtract(Duration(days: 3)),
  ),
  Despesa(
    id: 'd2',
    descricao: 'Mouse',
    valor: 49.00,
    data: DateTime.now().subtract(Duration(days: 2)),
  ),
  Despesa(
    id: 'd3',
    descricao: 'Teclado',
    valor: 96.23,
    data: DateTime.now().subtract(Duration(days: 2)),
  ),
  Despesa(
    id: 'd4',
    descricao: 'resma A4',
    valor: 43.25,
    data: DateTime.now().subtract(Duration(days: 1)),
  ),
  Despesa(
    id: 'd5',
    descricao: 'Caneta Bic',
    valor: 5.20,
    data: DateTime.now().subtract(Duration(days: 1)),
  ),
  Despesa(
    id: 'd6',
    descricao: 'Agenda',
    valor: 39.00,
    data: DateTime.now().subtract(Duration(days: 1)),
  ),
];

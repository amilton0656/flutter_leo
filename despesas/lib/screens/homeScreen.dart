import 'package:despesas/models/despesa_model.dart';
import 'package:despesas/screens/despesas_add.dart';
import 'package:despesas/screens/despesas_list.dart';
import 'package:flutter/material.dart';

import 'package:despesas/data/despesas_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return DespesasAdd(_addDespesa);
      },
    );
  }

  _addDespesa(Despesa despesa) {
    setState(() {
      despesas.add(despesa);
    });
    Navigator.of(context).pop();
  }

  _removeDespesa(String id) {
    setState(() {
      despesas.removeWhere((item) => id == item.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Despesas'),
          actions: [
            IconButton(
              onPressed: () => _openTransactionFormModal(context),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: DespesasList(despesas, _removeDespesa));
  }
}

import 'package:despesas/models/despesa_model.dart';
import 'package:flutter/material.dart';
import 'package:despesas/utils/utils.dart';

class DespesasList extends StatelessWidget {
  const DespesasList(this.despesas, this.onRemoveDespesa, {super.key});

  final List<Despesa> despesas;
  final Function(String) onRemoveDespesa;

  @override
  Widget build(BuildContext context) {
    return despesas.isEmpty
    ? const Center( child:
      Text('Não há despesas cadastradas.'),
    )
    : ListView.builder(
        itemCount: despesas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Text(
                  reaisFormatados(despesas[index].valor),
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            title: Text(despesas[index].descricao),
            subtitle:
                Text(dataFormatada(despesas[index].data)),
            trailing: IconButton(
              onPressed: () {
                onRemoveDespesa(despesas[index].id);
              },
              icon: const Icon(Icons.delete),
            ),
          );
        });
  }
}

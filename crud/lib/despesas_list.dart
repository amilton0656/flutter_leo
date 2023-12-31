import 'package:crud/despesa_provider.dart';
import 'package:crud/despesas_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DespesasList extends StatelessWidget {
  const DespesasList({super.key});

  @override
  Widget build(BuildContext context) {
    final despesas = Provider.of<DespesasProvider>(context).despesas;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Despesas'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(DespesasRoutes.DESPESA_FORM);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: despesas.length,
        itemBuilder: (ctx, index) => ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(despesas[index].id),
            ),
            title: Text(despesas[index].descricao),
            trailing: Container(
              width: 100,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        DespesasRoutes.DESPESA_FORM,
                        arguments: despesas[index],
                      );
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      Provider.of<DespesasProvider>(context, listen: false)
                          .removeDespesa(despesas[index]);
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

//Text(despesas[index].descricao)

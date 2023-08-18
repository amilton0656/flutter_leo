import 'package:despesas/models/despesa_model.dart';
import 'package:flutter/material.dart';

import 'package:despesas/utils/utils.dart';

class DespesasAdd extends StatefulWidget {
  const DespesasAdd(this.onAddDespesa, {super.key});

  final Function(Despesa) onAddDespesa;

  @override
  State<DespesasAdd> createState() => _DespesasAddState();
}

class _DespesasAddState extends State<DespesasAdd> {
  final _descricaoController = TextEditingController();
  final _valorController = TextEditingController();

  DateTime _dataSelecionada = DateTime.now();

  Despesa get add {
    return Despesa(
      id: DateTime.now().toString(),
      descricao: _descricaoController.text,
      valor: double.tryParse(_valorController.text) ?? 0,
      data: _dataSelecionada,
    );
  }

  _onSelecionarData(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime.now(),
    ).then((datePicked) {
      if (datePicked == null) {
        return;
      }

      setState(() {
        _dataSelecionada = datePicked;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: _descricaoController,
              decoration: const InputDecoration(
                labelText: 'Descrição',
              ),
              onSubmitted: (_) => widget.onAddDespesa(add),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: _valorController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: 'Valor',
              ),
              onSubmitted: (_) => widget.onAddDespesa(add),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dataFormatada(_dataSelecionada)),
                TextButton(
                  onPressed: () {
                    _onSelecionarData(context);
                  },
                  child: const Text('Selecionar uma data.'),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    widget.onAddDespesa(add);
                  },
                  child: const Text('Salvar'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Sair'),
                ),
              ],
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'package:crud/despesa_provider.dart';

import 'despesa_model.dart';

class DespesaForm extends StatefulWidget {
  const DespesaForm({super.key});

  @override
  State<DespesaForm> createState() => _DespesaFormState();
}

class _DespesaFormState extends State<DespesaForm> {
  final _formKey = GlobalKey<FormState>();
  final _formData = Map<String, Object>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_formData.isEmpty) {
      final arg = ModalRoute.of(context)?.settings.arguments;

      if (arg != null) {
        final despesa = arg as Despesa;

        _formData['id'] = despesa.id;
        _formData['descricao'] = despesa.descricao;
        _formData['valor'] = despesa.valor;

        print('chegou arg ${despesa.descricao}');
      } else {
        print('arg vazio');
      }
    }
  }

  onSubmitForm() {
    _formKey.currentState?.save();
    Provider.of<DespesasProvider>(context, listen: false)
        .saveDespesa(_formData);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Formulário'),
          actions: [
            IconButton(
              onPressed: onSubmitForm,
              icon: const Icon(Icons.save),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  TextFormField(
                    initialValue: _formData['descricao']?.toString(),
                    onSaved: (descricao) =>
                        _formData['descricao'] = descricao ?? '',
                    decoration: const InputDecoration(labelText: 'Descrição'),
                  ),
                  TextFormField(
                    initialValue: _formData['valor']?.toString(),
                    onSaved: (valor) =>
                        _formData['valor'] = double.parse(valor ?? '0'),
                    decoration: const InputDecoration(labelText: 'Valor'),
                  ),
                ],
              )),
        ));
  }
}

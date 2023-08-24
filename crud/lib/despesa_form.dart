import 'package:flutter/material.dart';
// import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DespesaForm extends StatefulWidget {
  const DespesaForm({super.key});

  @override
  State<DespesaForm> createState() => _DespesaFormState();
}

class _DespesaFormState extends State<DespesaForm> {
  final _formKey = GlobalKey<FormState>();
  final _formData = Map<String, Object>();

  void onSubmitForm() {
    print(_formData['descricao']);
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
                    onSaved: (descricao) =>
                        _formData['descricao'] = descricao ?? '',
                    decoration: const InputDecoration(labelText: 'Descrição'),
                  ),
                  TextFormField(
                    onSaved: (valor) =>
                        _formData['valor'] = double.parse(valor ?? '0'),
                    decoration: const InputDecoration(labelText: 'Valor'),
                  ),
                ],
              )),
        ));
  }
}

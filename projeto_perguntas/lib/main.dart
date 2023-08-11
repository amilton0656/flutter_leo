import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';

main() {
  runApp(PerguntasApp());
}

class PerguntasApp extends StatefulWidget {
  @override
  State<PerguntasApp> createState() => _PerguntasAppState();
}

class _PerguntasAppState extends State<PerguntasApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });

    print('Respondida $perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal preferido?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: Column(
            children: [
              Questao(perguntas[perguntaSelecionada]),
              ElevatedButton(
                  onPressed: responder, child: const Text('Perguntas')),
              ElevatedButton(
                  onPressed: responder, child: const Text('Perguntas')),
              ElevatedButton(
                  onPressed: responder, child: const Text('Perguntas')),
            ],
          )),
    );
  }
}

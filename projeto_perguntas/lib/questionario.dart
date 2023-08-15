import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';
import 'package:projeto_perguntas/resultado.dart';

class Questionario extends StatefulWidget {
  const Questionario({super.key});

  @override
  State<Questionario> createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal preferido?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 5},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Leão', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu instrutor preferido?',
      'respostas': [
        {'texto': 'Maria', 'pontuacao': 10},
        {'texto': 'João', 'pontuacao': 5},
        {'texto': 'Leo', 'pontuacao': 3},
        {'texto': 'Pedro', 'pontuacao': 1}
      ],
    },
  ];

  void _responder() {
    setState(() {
      if (_perguntaSelecionada < _perguntas.length) {
        _perguntaSelecionada++;
      }
    });
  }

  bool get finalizar {
    return (_perguntaSelecionada >= _perguntas.length);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    
    Map<String, Object> resp = _perguntas[_perguntaSelecionada];
  

    var respostas = resp['respostas'] as List;
    respostas.map((item) => item as String);

    final listaWidgets = respostas.map((item) {
      return Resposta(item['texto'] as String, _responder);
    });

    print('tem pergunta $temPerguntaSelecionada');

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: !finalizar
              ? Column(
                  children: [
                    Questao(
                      _perguntas[_perguntaSelecionada]['texto'].toString(),
                    ),
                    ...listaWidgets,
                  ],
                )
              : const Resultado()),
    );
  }
}

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta(this.texto, this.onSelecao, {super.key});

  final String texto;
  final Function() onSelecao;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        onPressed: onSelecao,
        child: Text(texto),
      ),
    );
  }
}

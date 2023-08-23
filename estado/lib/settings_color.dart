import 'package:estado/estado_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SettingsColor extends StatelessWidget {
  const SettingsColor({super.key});

  @override
  Widget build(BuildContext context) {
    EstadoColor estado = Provider.of<EstadoColor>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {
            estado.changeColor(Colors.blue);
          },
          child: const Text(
            'Azul',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            estado.changeColor(Colors.red);
          },
          child: const Text(
            'Vermelho',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            estado.changeColor(Colors.yellow);
          },
          child: const Text(
            'Amarelo',
            style: TextStyle(
              fontSize: 30,
              color: Colors.yellow,
            ),
          ),
        )
      ],
    );
  }
}

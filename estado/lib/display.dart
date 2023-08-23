import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'estado_color.dart';
import 'estado_number.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    final estadoColor = Provider.of<EstadoColor>(context);
    final estadoNumber = Provider.of<EstadoNumber>(context);

    return Container(
      decoration: BoxDecoration(
        color: estadoColor.color,
      ),
      child: Center(
        child: SizedBox(
            height: 200,
            child: Center(
              child: Text(
                estadoNumber.number.toString(),
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            )),
      ),
    );
  }
}

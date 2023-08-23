import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'estado_consumer.dart';

class DisplayConsumer extends StatelessWidget {
  const DisplayConsumer({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Consumer')),
      body: Center(
        child: Consumer<EstadoConsumer>(
          builder: (ctx, titulo, _) => Text(
            titulo.titulo,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

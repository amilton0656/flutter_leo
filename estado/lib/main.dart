import 'package:estado/estado_color.dart';
import 'package:estado/estado_consumer.dart';
import 'package:estado/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'estado_number.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => EstadoColor(),
        ),
        ChangeNotifierProvider(
          create: (_) => EstadoNumber(),
        ),
        ChangeNotifierProvider(
          create: (_) => EstadoConsumer(),
        ),
      ],
      child: const MaterialApp(home: Home()),
    ),
  );
}

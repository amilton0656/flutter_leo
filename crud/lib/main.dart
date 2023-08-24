import 'package:crud/despesa_provider.dart';
import 'package:flutter/material.dart';

import 'package:crud/despesas_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    home: MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DespesasProvider(),
        ),
      ],
      child: const DespesasList(),
      ),
  ));
}

//flutter pub add provider
//flutter pub add intl
//https://pub.dev/packages/mask_text_input_formatter
//flutter pub add mask_text_input_formatter

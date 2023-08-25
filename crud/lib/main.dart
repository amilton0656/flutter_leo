import 'package:crud/despesa_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:crud/despesa_provider.dart';
import 'package:crud/despesas_routes.dart';
import 'package:crud/despesas_list.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DespesasProvider(),
        ),
      ],
      
    
    child: MaterialApp(
      home: DespesasList(),
      routes: {
        DespesasRoutes.DESPESA_FORM: (ctx) => DespesaForm()
      },
        ),
  ),
  );
}

//flutter pub add provider
//flutter pub add intl
//https://pub.dev/packages/mask_text_input_formatter
//flutter pub add mask_text_input_formatter

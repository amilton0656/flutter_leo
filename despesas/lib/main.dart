import 'package:flutter/material.dart';

import 'package:despesas/screens/homeScreen.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreen()
    );
  }
}

//flutter pub add intl


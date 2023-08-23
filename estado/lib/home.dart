import 'package:estado/display.dart';
import 'package:estado/settings_color.dart';
import 'package:estado/settings_number.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'display_consumer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estado'),
      ),
      body: Column(
        children: [
          Display(),
          SizedBox(height: 20),
          SettingsColor(),
          SizedBox(height: 20),
          SettingsNumber(),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => DisplayConsumer()),
              );
            },
            child: Text('Consumer'),
          )
        ],
      ),
    );
  }
}

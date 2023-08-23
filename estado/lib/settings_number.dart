import 'package:estado/estado_number.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsNumber extends StatelessWidget {
  const SettingsNumber({super.key});

  @override
  Widget build(BuildContext context) {
    EstadoNumber estadoNumber = Provider.of<EstadoNumber>(context);

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              estadoNumber.changeNumber('+');
            },
            icon: const Icon(Icons.add, size: 50),
          ),
          IconButton(
            onPressed: () {
              estadoNumber.changeNumber('-');
            },
            icon: const Icon(Icons.remove, size: 50),
          ),
          IconButton(
            onPressed: () {
              estadoNumber.changeNumber('X');
            },
            icon: const Icon(Icons.clear, size: 50),
          ),
        ],
      ),
    );
  }
}

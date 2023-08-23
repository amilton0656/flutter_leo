import 'package:flutter/material.dart';

class Badgee extends StatelessWidget {
  const Badgee({
    super.key,
    required this.child,
    required this.value,
    this.color,
    });

  final Widget child;
  final String value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
      ],
    );
  }
}
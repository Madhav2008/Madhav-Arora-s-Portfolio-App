// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimatedCounter extends StatelessWidget {
  AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: Duration(seconds: 2),
      builder: (context, value, child) => Text(
        "$value$text",
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    );
  }
}

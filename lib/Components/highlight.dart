// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class HeighLight extends StatelessWidget {
  HeighLight({Key? key, required this.counter, this.label})
      : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return counter;
  }
}

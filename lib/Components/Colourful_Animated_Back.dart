// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Colourful extends StatelessWidget {
  const Colourful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 170,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.pink,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(80)),
          child: Image.network(
            "../assets/images/My1.jpg",
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }
}

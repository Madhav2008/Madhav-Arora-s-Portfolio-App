// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Projects",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: text,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primary,
              secondary,
            ],
          ),
        ),
      ),
    );
  }
}

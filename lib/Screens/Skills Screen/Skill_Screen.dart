// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Components/Skills.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Skills",
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
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Skills(),
            ],
          ),
        ),
      ),
    );
  }
}

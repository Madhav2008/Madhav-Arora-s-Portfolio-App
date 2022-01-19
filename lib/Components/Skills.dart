// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Components/Databases.dart';
import 'package:madhav_arora_portfolio/Components/Frameworks.dart';
import 'package:madhav_arora_portfolio/Components/Languages.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            'My Skills',
            style: TextStyle(
              fontSize: 25,
              color: text,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: const [
                Languages(),
                Frameworks(),
                Databases(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

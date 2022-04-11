// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Components/Databases.dart';
import 'package:madhav_arora_portfolio/Components/Frameworks.dart';
import 'package:madhav_arora_portfolio/Components/Languages.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';

class Skills extends StatefulWidget {
  Skills({Key? key}) : super(key: key);

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
          SizedBox(
            height: 30,
          ),
          Text(
            'What I Know ??',
            style: TextStyle(
              fontSize: 30,
              color: text,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              children: [
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

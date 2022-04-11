// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'Animated_Counter.dart';
import 'highlight.dart';

class Databases extends StatefulWidget {
  Databases({Key? key}) : super(key: key);

  @override
  _DatabasesState createState() => _DatabasesState();
}

class _DatabasesState extends State<Databases> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Databases',
          style: TextStyle(
            fontSize: 27,
            color: highlighted,
            letterSpacing: 2,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CircularPercentIndicator(
                  progressColor: highlighted,
                  backgroundColor: primary,
                  percent: 0.88,
                  radius: 90,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: HeighLight(
                    counter: AnimatedCounter(
                      value: 88,
                      text: "%",
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Firebase',
                  style: TextStyle(
                    color: text,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

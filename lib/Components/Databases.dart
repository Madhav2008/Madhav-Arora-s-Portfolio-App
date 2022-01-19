// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'Animated_Counter.dart';
import 'highlight.dart';

class Databases extends StatefulWidget {
  const Databases({Key? key}) : super(key: key);

  @override
  _DatabasesState createState() => _DatabasesState();
}

class _DatabasesState extends State<Databases> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'Databases',
            style: TextStyle(
              fontSize: 20,
              color: highlighted,
              letterSpacing: 2,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 14,
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  progressColor: highlighted,
                  backgroundColor: primary,
                  percent: 0.88,
                  radius: 80,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const HeighLight(
                    counter: AnimatedCounter(
                      value: 88,
                      text: "%",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Firebase',
                  style: TextStyle(
                    color: text,
                    fontSize: 18,
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

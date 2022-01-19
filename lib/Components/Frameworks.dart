// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'Animated_Counter.dart';
import 'highlight.dart';

class Frameworks extends StatefulWidget {
  const Frameworks({Key? key}) : super(key: key);

  @override
  _FrameworksState createState() => _FrameworksState();
}

class _FrameworksState extends State<Frameworks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'Frameworks',
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
                  percent: 0.90,
                  radius: 80,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const HeighLight(
                    counter: AnimatedCounter(
                      value: 90,
                      text: "%",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'React Native',
                  style: TextStyle(
                    color: text,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 14,
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  progressColor: highlighted,
                  backgroundColor: primary,
                  percent: 0.87,
                  radius: 80,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const HeighLight(
                    counter: AnimatedCounter(
                      value: 87,
                      text: "%",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Flutter',
                  style: TextStyle(
                    color: text,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 14,
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  progressColor: highlighted,
                  backgroundColor: primary,
                  percent: 0.75,
                  radius: 80,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const HeighLight(
                    counter: AnimatedCounter(
                      value: 75,
                      text: "%",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Django',
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
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

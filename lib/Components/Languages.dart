// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';
import 'package:madhav_arora_portfolio/Components/Animated_Counter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'highlight.dart';

class Languages extends StatefulWidget {
  Languages({Key? key}) : super(key: key);

  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Languages',
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CircularPercentIndicator(
                  progressColor: highlighted,
                  backgroundColor: primary,
                  percent: 0.85,
                  radius: 90,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: HeighLight(
                    counter: AnimatedCounter(
                      value: 85,
                      text: "%",
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'JavaScript',
                  style: TextStyle(
                    color: text,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 14,
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  progressColor: highlighted,
                  backgroundColor: primary,
                  percent: 0.95,
                  radius: 90,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: HeighLight(
                    counter: AnimatedCounter(
                      value: 95,
                      text: "%",
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'HTML',
                  style: TextStyle(
                    color: text,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 14,
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  progressColor: highlighted,
                  backgroundColor: primary,
                  percent: 0.60,
                  radius: 90,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: HeighLight(
                    counter: AnimatedCounter(
                      value: 60,
                      text: "%",
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Python',
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
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CircularPercentIndicator(
                  progressColor: highlighted,
                  backgroundColor: primary,
                  percent: 0.55,
                  radius: 90,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: HeighLight(
                    counter: AnimatedCounter(
                      value: 55,
                      text: "%",
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '  Jupiter\nNotebook',
                  style: TextStyle(
                    color: text,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 14,
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  progressColor: highlighted,
                  backgroundColor: primary,
                  percent: 0.90,
                  radius: 90,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: HeighLight(
                    counter: AnimatedCounter(
                      value: 90,
                      text: "%",
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'CSS',
                  style: TextStyle(
                    color: text,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 14,
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  progressColor: highlighted,
                  backgroundColor: primary,
                  percent: 0.80,
                  radius: 90,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: HeighLight(
                    counter: AnimatedCounter(
                      value: 80,
                      text: "%",
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Dart',
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
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';
import 'package:madhav_arora_portfolio/Components/Animated_Counter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'highlight.dart';

class Languages extends StatefulWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'Languages',
            style: TextStyle(
              fontSize: 27,
              color: highlighted,
              letterSpacing: 2,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 14,
            ),
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
                  center: const HeighLight(
                    counter: AnimatedCounter(
                      value: 85,
                      text: "%",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'JavaScript',
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
                  percent: 0.95,
                  radius: 90,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const HeighLight(
                    counter: AnimatedCounter(
                      value: 95,
                      text: "%",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'HTML',
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
                  percent: 0.60,
                  radius: 90,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const HeighLight(
                    counter: AnimatedCounter(
                      value: 60,
                      text: "%",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Python',
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
          height: 25,
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
                  percent: 0.55,
                  radius: 90,
                  animation: true,
                  animationDuration: 2000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const HeighLight(
                    counter: AnimatedCounter(
                      value: 55,
                      text: "%",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '  Jupyter \nNotebook',
                  style: TextStyle(
                    color: text,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 22,
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
            const SizedBox(
              width: 22,
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
                  center: const HeighLight(
                    counter: AnimatedCounter(
                      value: 80,
                      text: "%",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Dart',
                  style: TextStyle(
                    color: text,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
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

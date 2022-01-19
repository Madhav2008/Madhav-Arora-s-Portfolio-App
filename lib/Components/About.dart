// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Country : ',
                style: TextStyle(
                  fontSize: 14,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
              Text(
                'India',
                style: TextStyle(
                  fontSize: 14,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'State : ',
                style: TextStyle(
                  fontSize: 14,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
              Text(
                'Delhi',
                style: TextStyle(
                  fontSize: 14,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Age : ',
                style: TextStyle(
                  fontSize: 14,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
              Text(
                '13',
                style: TextStyle(
                  fontSize: 14,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

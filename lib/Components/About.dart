// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';

class About extends StatefulWidget {
  About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Country : ',
                style: TextStyle(
                  fontSize: 20,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
              Text(
                'India',
                style: TextStyle(
                  fontSize: 20,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'State : ',
                style: TextStyle(
                  fontSize: 20,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
              Text(
                'Delhi',
                style: TextStyle(
                  fontSize: 20,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Age : ',
                style: TextStyle(
                  fontSize: 20,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
              Text(
                '13',
                style: TextStyle(
                  fontSize: 20,
                  color: text,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

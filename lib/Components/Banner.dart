// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';
import 'package:madhav_arora_portfolio/Screens/Profile%20Screen/Profile_Screen.dart';

class Banners extends StatelessWidget {
  Banners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "../assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: primary.withOpacity(0.5),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space !",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: text,
                        fontSize: 27,
                      ),
                ),
                SizedBox(height: 20),
                Texts(),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20 * 2,
                      vertical: 20,
                    ),
                    backgroundColor: highlighted,
                  ),
                  child: Text(
                    "EXPLORE NOW",
                    style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Texts extends StatelessWidget {
  Texts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          Text(
            "<Madhav>",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: highlighted,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "I am a ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: text,
              letterSpacing: 1,
            ),
          ),
          AnimatedText(),
          SizedBox(
            width: 10,
          ),
          Text(
            "</Arora>",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: highlighted,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          "Devloper.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
        TypewriterAnimatedText(
          "Designer.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
        TypewriterAnimatedText(
          "Coder.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
        TypewriterAnimatedText(
          "Learner.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
        TypewriterAnimatedText(
          "Devloper.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
        TypewriterAnimatedText(
          "Designer.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
        TypewriterAnimatedText(
          "Coder.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
        TypewriterAnimatedText(
          "Learner.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
        TypewriterAnimatedText(
          "Devloper.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
        TypewriterAnimatedText(
          "Designer.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
        TypewriterAnimatedText(
          "Coder.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
        TypewriterAnimatedText(
          "Learner.",
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: highlighted,
            letterSpacing: 1,
          ),
          speed: Duration(milliseconds: 200),
          cursor: '',
        ),
      ],
    );
  }
}

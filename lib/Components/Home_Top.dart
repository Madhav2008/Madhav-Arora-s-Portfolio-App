// ignore_for_file: avoid_web_libraries_in_flutter, file_names

import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';

class Top extends StatefulWidget {
  const Top({Key? key}) : super(key: key);

  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
  void github() {
    String url = 'https://github.com/Madhav2008';
    html.window.open(url, '_blank');
  }

  void linkedin() {
    String url = 'https://www.linkedin.com/in/madhav-arora-9685031b7/';
    html.window.open(url, '_blank');
  }

  void gmail() {
    String url =
        'https://mail.google.com/mail/u/0/#inbox?compose=CllgCJvrcCmDtXSGctlQdmCgmtTfSkSkdKGMctHgkPFfSnZGqBqnxNNGTVdtgDJkNBFkTkwzWXV';
    html.window.open(url, '_blank');
  }

  // String desc =
  //     "Experienced App Developer (Native/Hybrid) with over 2 years of experience in App Development working on my own projects and freelancing and 5 months plus in Flutter.";
  String desc =
      "“You might not think that programmers are artists, but programming is an extremely creative profession. It's logic-based creativity.”";

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primary,
              secondary,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(80)),
              child: Image.network(
                "https://avatars.githubusercontent.com/u/72864817?s=400&u=2f8a4bd2f1f03f4f6ad73c61abfc5770afd1e135&v=4",
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Madhav Arora",
              style: TextStyle(
                color: text,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: lightText,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Connect with me",
              style: TextStyle(
                color: text,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async {
                      linkedin();
                    },
                    child: Image.network(
                      "https://raw.githubusercontent.com/Madhav2008/Social-Media-Icons/main/linkedin.png",
                      width: 23,
                      height: 23,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async {
                      github();
                    },
                    child: Image.network(
                      "https://raw.githubusercontent.com/Madhav2008/Social-Media-Icons/main/github_2048_black.png",
                      width: 35,
                      height: 35,
                      color: text,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async {
                      gmail();
                    },
                    child: Image.network(
                      "https://raw.githubusercontent.com/Madhav2008/Social-Media-Icons/main/gmail-new-icon-2-removebg-preview.png",
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        secondary,
                        primary,
                      ],
                    ),
                  ),
                  child: const Text(
                    "Download My Resume",
                    style: TextStyle(color: text),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Components/About.dart';
import 'package:madhav_arora_portfolio/Components/Skills.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text(
          "Madhav Arora's Profile",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: text,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primary,
              secondary,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/72864817?s=400&u=2f8a4bd2f1f03f4f6ad73c61abfc5770afd1e135&v=4",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Madhav Arora',
                  style: TextStyle(
                    fontSize: 27,
                    color: text,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                About(),
                Skills(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

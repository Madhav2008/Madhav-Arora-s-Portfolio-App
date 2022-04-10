// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Components/About.dart';
import 'package:madhav_arora_portfolio/Components/Skills.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
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
        decoration: BoxDecoration(
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
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage(
                    "../assets/images/My.png",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Madhav Arora',
                  style: TextStyle(
                    fontSize: 32,
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

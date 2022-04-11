// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';

class MyProjects extends StatelessWidget {
  MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Projects",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: text,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
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
      ),
    );
  }
}

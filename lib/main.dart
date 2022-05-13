// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/Home Screen/Home_Screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Madhav Arora's Portfolio",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset(
          '../assets/images/My2_MA.png',
        ),
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.decoratedBoxTransition,
        backgroundColor: Colors.black,
        duration: 3000,
        splashIconSize: 400,
        centered: true,
      ),
    );
  }
}

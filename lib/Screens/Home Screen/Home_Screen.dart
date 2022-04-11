// ignore_for_file: file_names, avoid_web_libraries_in_flutter, deprecated_member_use, unused_local_variable, prefer_const_constructors_in_immutables

import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Components/Colourful_Animated_Back.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';
import 'package:madhav_arora_portfolio/Components/Banner.dart';
import 'package:madhav_arora_portfolio/Components/SideMenu.dart';
import 'package:share/share.dart';
import 'dart:html' as html;
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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

  String desc =
      "“You might not think that programmers are artists, but programming is an extremely creative profession. It's logic-based creativity.”";

  bool isLoading = false;

  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 1),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getEffect();
  }

  getEffect() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(Duration(seconds: 2), () {});

    setState(() {
      isLoading = false;
    });
  }

  Widget buildEffect() {
    return WillPopScope(
      onWillPop: () async {
        bool willLeave = false;
        await showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you really want to exit the app'),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(willLeave = true),
                child: Text("Yes"),
              ),
              SizedBox(height: 16),
              FlatButton(
                onPressed: () => Navigator.of(context).pop(willLeave = false),
                child: Text("No"),
              ),
            ],
          ),
        );
        return willLeave;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: Text(
            "Madhav Arora's Portfolio",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: text,
              letterSpacing: 1,
            ),
          ),
          centerTitle: true,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
          ),
          actions: [
            Theme(
              data: Theme.of(context).copyWith(
                dividerColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.white),
                textTheme: TextTheme().apply(bodyColor: Colors.white),
              ),
              child: PopupMenuButton<int>(
                color: backgroundColor,
                onSelected: (item) => onSelected(context, item),
                itemBuilder: (context) => [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Row(
                      children: [
                        Icon(Icons.share),
                        SizedBox(width: 12),
                        Text(
                          'Share',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Row(
                      children: [
                        Icon(Icons.logout),
                        SizedBox(width: 12),
                        Text(
                          'Exit',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: SideMenu(),
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                primary,
                secondary,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey.shade500,
                  highlightColor: Colors.grey.shade100,
                  child: Banners(),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Shimmer.fromColors(
                      period: Duration(seconds: 1),
                      baseColor: Colors.grey.shade500,
                      highlightColor: Colors.grey.shade100,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Row(
                          children: [
                            AnimatedBuilder(
                              animation: _controller,
                              child: Colourful(),
                              builder: (BuildContext context, Widget? child) {
                                return Transform.translate(
                                  offset: Offset(170, 0),
                                  child: Transform.rotate(
                                    angle: _controller.value * 2,
                                    child: child,
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(80),
                                ),
                                child: Image.asset(
                                  "../assets/images/My1.jpg",
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade500,
                      highlightColor: Colors.grey.shade100,
                      child: Text(
                        "Madhav Arora",
                        style: TextStyle(
                          color: text,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade500,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          desc,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: lightText,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade500,
                      highlightColor: Colors.grey.shade100,
                      child: Text(
                        "Connect with me",
                        style: TextStyle(
                          color: text,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Shimmer.fromColors(
                          baseColor: Colors.grey.shade500,
                          highlightColor: Colors.grey.shade100,
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () async {
                                linkedin();
                              },
                              child: Image.asset(
                                "../assets/images/linkedin.png",
                                width: 23,
                                height: 23,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.shade500,
                          highlightColor: Colors.grey.shade100,
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () async {
                                github();
                              },
                              child: Image.asset(
                                "../assets/images/github.png",
                                width: 35,
                                height: 35,
                                color: text,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.shade500,
                          highlightColor: Colors.grey.shade100,
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () async {
                                gmail();
                              },
                              child: Image.asset(
                                "../assets/images/gmail.png",
                                width: 35,
                                height: 35,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade500,
                      highlightColor: Colors.grey.shade100,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.red,
                                  Colors.pink,
                                  Colors.red,
                                  Colors.pinkAccent,
                                ],
                              ),
                            ),
                            child: Text(
                              "Download My Resume",
                              style: TextStyle(color: text),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return buildEffect();
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: Text(
            "Madhav Arora's Portfolio",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: text,
              letterSpacing: 1,
            ),
          ),
          centerTitle: true,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
          ),
          actions: [
            Theme(
              data: Theme.of(context).copyWith(
                dividerColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.white),
                textTheme: TextTheme().apply(bodyColor: Colors.white),
              ),
              child: PopupMenuButton<int>(
                color: backgroundColor,
                onSelected: (item) => onSelected(context, item),
                itemBuilder: (context) => [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Row(
                      children: [
                        Icon(Icons.share),
                        SizedBox(width: 12),
                        Text(
                          'Share',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Row(
                      children: [
                        Icon(Icons.logout),
                        SizedBox(width: 12),
                        Text(
                          'Exit',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: SideMenu(),
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                primary,
                secondary,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Banners(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Row(
                        children: [
                          AnimatedBuilder(
                            animation: _controller,
                            child: Colourful(),
                            builder: (BuildContext context, Widget? child) {
                              return Transform.translate(
                                offset: Offset(170, 0),
                                child: Transform.rotate(
                                  angle: _controller.value * 2 * pi,
                                  child: child,
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(80),
                              ),
                              child: Image.asset(
                                "../assets/images/My1.jpg",
                                width: 150,
                                height: 150,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ColorizeAnimatedTextKit(
                      text: [
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                        "Madhav Arora",
                      ],
                      colors: [
                        Colors.red,
                        Colors.pink,
                        Colors.redAccent,
                        Colors.pinkAccent,
                      ],
                      textStyle: TextStyle(
                        color: text,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: lightText,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Connect with me",
                  style: TextStyle(
                    color: text,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
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
                        child: Image.asset(
                          "../assets/images/linkedin.png",
                          width: 23,
                          height: 23,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () async {
                          github();
                        },
                        child: Image.asset(
                          "../assets/images/github.png",
                          width: 35,
                          height: 35,
                          color: text,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () async {
                          gmail();
                        },
                        child: Image.asset(
                          "../assets/images/gmail.png",
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.pink,
                          ],
                        ),
                      ),
                      child: Text(
                        "Download My Resume",
                        style: TextStyle(color: text),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            // ],
          ),
        ),
        // ),
      );
    }
  }
}

void onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      Share.share(
        "https://play.google.com/store/apps/details?id=com.instructivetech.kidskite",
      );
      break;
    case 1:
      bool willLeave;
      Navigator.of(context).pop(willLeave = true);
  }
}

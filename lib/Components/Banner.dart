// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';
import 'package:madhav_arora_portfolio/Screens/My%20Projects/My_Projects.dart';

class Banners extends StatelessWidget {
  const Banners({
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
          // Container(color: secondary),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MyProjects(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20 * 2,
                      vertical: 20,
                    ),
                    backgroundColor: highlighted,
                  ),
                  child: const Text(
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

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: const [
          SizedBox(width: 20 / 2),
          Text("I build "),
          Expanded(child: AnimatedText()),
          SizedBox(width: 20 / 2),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Madhav Arora");
  }
}

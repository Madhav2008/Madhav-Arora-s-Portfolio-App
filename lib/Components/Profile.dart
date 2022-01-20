// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primary,
      ),
      width: 305,
      child: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 60,
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
              fontSize: 20,
              color: text,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

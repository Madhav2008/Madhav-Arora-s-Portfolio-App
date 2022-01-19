// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:madhav_arora_portfolio/Constants/Constants.dart';
import 'package:madhav_arora_portfolio/Components/About.dart';
import 'package:madhav_arora_portfolio/Components/Profile.dart';
import 'package:madhav_arora_portfolio/Components/Skills.dart';
import 'package:madhav_arora_portfolio/Screens/Profile%20Screen/Profile_Screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      child: SafeArea(
        child: Column(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const ProfileScreen(),
                    ),
                  );
                },
                child: const Profile(),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 15,
                    ),
                    About(),
                    Skills(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

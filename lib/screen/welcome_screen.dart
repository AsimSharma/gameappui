import 'package:flutter/material.dart';
import 'package:gameappui/config/style/app_colors.dart';
import 'package:gameappui/widgets/custome_btns.dart';
import 'package:gameappui/widgets/logo_header.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            height: height,
            width: width,
            color: primarycolors,
          ),
          Positioned(
              top: 140,
              height: 500,
              width: width,
              child: Container(
                color: secondarycolors,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    logoheader(context),
                    const CircleAvatar(
                      radius: 52,
                      backgroundColor: primarycolors,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "congratulations",
                      style: signuplin,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Now you are Register",
                      style: topheadingText,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      height: 2,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Get Ready to play",
                      style: secondText,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomBtn(btnTitle: "Start Now", onPressed: () {})
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gameappui/style/app_colors.dart';
import 'package:gameappui/widgets/custome_btns.dart';
import 'package:gameappui/widgets/logo_header.dart';

import '../models/onboarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  int pageIndex = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              controller: pageController,
              physics: const BouncingScrollPhysics(),
              itemCount: onboardlist.length,
              itemBuilder: (context, index) {
                return Container(
                  color: primarycolors,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      logoheader(),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        onboardlist[index].title,
                        style: topheadingText,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        onboardlist[index].decription,
                        style: secondText,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
              }),
          const Positioned(
              bottom: 120,
              left: 180,
              child: Text(
                "heloo",
                style: secondText,
              )),
          Positioned(
              bottom: 50,
              width: 350,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Skip This",
                    style: secondText,
                  ),
                  CustomBtn2(
                      btnTitle: "Next",
                      onPressed: () {
                        setState(() {
                          pageController.nextPage(
                              duration: const Duration(milliseconds: 800),
                              curve: Curves.easeIn);
                        });
                      })
                ],
              ))
        ],
      ),
    );
  }
}

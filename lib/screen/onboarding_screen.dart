import 'package:flutter/material.dart';
import 'package:gameappui/config/routes.dart';
import 'package:gameappui/config/style/app_colors.dart';
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
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          onboardlist[index].decription,
                          style: secondText,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                );
              }),
          Positioned(
              bottom: 100,
              left: 150,
              child: Row(
                children: [...List.generate(3, (index) => dootedBox(index))],
              )),
          Positioned(
              bottom: 20,
              width: 370,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, GameUiApp.home);
                        },
                        child: const Text(
                          "Skiped me",
                          style: secondText,
                        )),
                    CustomBtn2(
                        btnTitle: "Next",
                        onPressed: () {
                          setState(() {
                            pageIndex == onboardlist.length - 1
                                ? Navigator.pushNamed(context, GameUiApp.home)
                                : pageController.nextPage(
                                    duration: const Duration(milliseconds: 800),
                                    curve: Curves.easeIn);
                          });
                        })
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Container dootedBox(int index) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          color: pageIndex == index ? Colors.red : Colors.blue,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
    );
  }
}

import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Expanded(child: PageView.builder(itemBuilder: (context, int) {
          return Column();
        }))
      ]),
    );
  }
}

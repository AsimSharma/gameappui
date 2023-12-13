import 'package:flutter/material.dart';
import 'package:gameappui/style/app_colors.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.btnTitle, required this.onPressed});

  final String btnTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 45,
        width: 300,
        decoration: const BoxDecoration(
            color: btnColors,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
            child: Text(
          btnTitle,
          style: secondText,
        )),
      ),
    );
  }
}

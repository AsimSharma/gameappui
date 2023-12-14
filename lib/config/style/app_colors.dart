import 'package:flutter/material.dart';

const Color primarycolors = Color(0xff292F3D);
const Color secondarycolors = Color.fromARGB(255, 68, 75, 90);
const Color inputcolor = Color.fromARGB(255, 210, 205, 224);
const Color logoColor = Colors.orange;
const Color btnColors = Color.fromARGB(255, 10, 222, 17);

const Color textColor = Colors.white;

const headingText =
    TextStyle(color: logoColor, fontSize: 25, fontFamily: "Rubikbubble");
const secondText = TextStyle(
    color: Colors.white,
    // fontSize: 0.2.toResponsive(context),
    fontFamily: "Poppinsmedium");
const signuplin =
    TextStyle(color: Colors.blue, fontSize: 14, fontFamily: "Poppinsmedium");
const topheadingText = TextStyle(
    color: Colors.white,
    fontSize: 29,
    fontWeight: FontWeight.w600,
    fontFamily: "kalnia");

myTextStyle(Color color, double fontSize, String fontFamily) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontFamily: fontFamily,
  );
}

// class AppColors {
//   static const Color mainCoors = Color(0xff292F3D);
// }



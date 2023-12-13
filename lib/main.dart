import 'package:flutter/material.dart';
import 'package:gameappui/screen/onboarding_screen.dart';
// import 'package:gameappui/screen/register_screen.dart';

// import 'screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}

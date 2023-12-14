import 'package:flutter/material.dart';
import 'package:gameappui/config/routes.dart';
import 'package:gameappui/screen/forgetpassword_screen.dart';
import 'package:gameappui/screen/home_screen.dart';
import 'package:gameappui/screen/login_screen.dart';
import 'package:gameappui/screen/onboarding_screen.dart';
import 'package:gameappui/screen/register_screen.dart';
// import 'package:gameappui/screen/otp_screen.dart'; // import 'package:gameappui/screen/onboarding_screen.dart';

// import 'screen/forgetpassword_screen.dart';
// import 'package:gameappui/screen/register_screen.dart';
// import 'screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
      routes: {
        // "/": (context) => const ForgetPassworScreen(),
        GameUiApp.home: (context) => const HomeScreen(),
        GameUiApp.login: (context) => const LoginScreen(),
        GameUiApp.register: (context) => const RegisterScreen(),
        GameUiApp.forgetpassword: (context) => const ForgetPassworScreen()
      },
    );
  }
}

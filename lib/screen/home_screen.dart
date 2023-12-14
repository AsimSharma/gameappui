import 'package:flutter/material.dart';
import 'package:gameappui/config/routes.dart';
import 'package:gameappui/config/style/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              Text(
                "Welcome home Gamer's",
                style: headingText,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(
                        context, GameUiApp.forgetpassword);
                  },
                  child: const Text("forget_password"))
            ],
          ),
        ),
      ),
    );
  }
}

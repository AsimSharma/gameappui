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
          child: Column(
            children: [
              const Text(
                "Welcome home Gamer's",
                style: headingText,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(
                        context, GameUiApp.forgetpassword);
                  },
                  child: const Text("forget_password")),
              TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, GameUiApp.passwordreset);
                  },
                  child: const Text("password_resets")),
              TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(
                        context, GameUiApp.passwordresetsucessfully);
                  },
                  child: const Text("password_resets_successfully")),
              TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, GameUiApp.login);
                  },
                  child: const Text("login")),
              TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, GameUiApp.register);
                  },
                  child: const Text("register")),
              TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, GameUiApp.welcomescreen);
                  },
                  child: const Text("wellcome_screen")),
              TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, GameUiApp.optscreen);
                  },
                  child: const Text("Otp_screen"))
            ],
          ),
        ),
      ),
    );
  }
}

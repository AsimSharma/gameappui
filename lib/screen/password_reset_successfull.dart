import 'package:flutter/material.dart';
import 'package:gameappui/config/style/app_colors.dart';

import '../widgets/custome_btns.dart';

class PasswordResetSucessFull extends StatelessWidget {
  const PasswordResetSucessFull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: primarycolors,
        child: Column(
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                "Reset pasword",
                style: secondText,
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 250,
              child: Image.asset("assets/images/prss.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Column(
                children: [
                  Text(
                    "Password Reset successful",
                    style: topheadingText,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your password resets has been done successfully ",
                    style: secondText,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomBtn(
              btnTitle: "Continue to Accounts",
              onPressed: () {},
              width: 370,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

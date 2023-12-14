import 'package:flutter/material.dart';

import '../config/style/app_colors.dart';
import '../widgets/custome_btns.dart';
import '../widgets/custome_inputs.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.maxFinite,
            color: primarycolors,
            child: Column(
              // crossAxisAlignment: ,
              children: [
                const Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
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
                  child: Image.asset("assets/images/forgetpassword.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Column(
                    children: [
                      Text(
                        "Setyour Password",
                        style: topheadingText,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Enter your new passwor password to  ",
                        style: secondText,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomeInputs(
                      hintText: "password",
                      credentials: true,
                      icons: Icons.lock,
                      textinputTypes: TextInputType.emailAddress),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomeInputs(
                      hintText: "Confirm_password",
                      credentials: true,
                      icons: Icons.lock,
                      textinputTypes: TextInputType.emailAddress),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomBtn(
                  btnTitle: "Change password",
                  onPressed: () {},
                  width: 370,
                )
              ],
            )),
      ),
    );
  }
}

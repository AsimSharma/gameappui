import 'package:flutter/material.dart';
import 'package:gameappui/config/style/app_colors.dart';
import 'package:gameappui/widgets/custome_inputs.dart';

import '../widgets/custome_btns.dart';

class ForgetPassworScreen extends StatelessWidget {
  const ForgetPassworScreen({super.key});

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
                    "Forget Password",
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
                        "Forget your Password??",
                        style: topheadingText,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Enter your Email addres we will provide the password restlink in your email",
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
                  padding: const EdgeInsets.all(20),
                  child: CustomeInputs(
                      hintText: "Email",
                      icons: Icons.email,
                      textinputTypes: TextInputType.emailAddress),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomBtn(
                    btnTitle: "Send invitation", width: 378, onPressed: () {})
              ],
            )),
      ),
    );
  }
}

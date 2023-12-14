import 'package:flutter/material.dart';
import 'package:gameappui/style/app_colors.dart';

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
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Forget Password",
                    style: secondText,
                  ),
                )),
                Container(
                  height: 200,
                  child: Image.asset("assets/images/forgetpassword.png"),
                )
              ],
            )),
      ),
    );
  }
}

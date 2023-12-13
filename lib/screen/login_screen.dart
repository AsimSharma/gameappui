import 'package:flutter/material.dart';

import 'package:gameappui/style/app_colors.dart';

import '../widgets/custome_btns.dart';
import '../widgets/custome_inputs.dart';
import '../widgets/logo_header.dart';
import '../widgets/social_login_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final TextEditingController email = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    dynamic size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: primarycolors,
            ),
            Positioned(
              top: 140,
              height: 500,
              width: width,
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: secondarycolors,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    logoheader(),
                    const CustomeInputs(
                      hintText: "Emaill",
                      icons: Icons.email,
                      textinputTypes: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomeInputs(
                      hintText: "password",
                      icons: Icons.password,
                      credentials: true,
                      textinputTypes: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Frget Password??",
                        style: secondText,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomBtn(
                      btnTitle: "Login",
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Center(
                      child: Text(
                        "or by social accounts",
                        style: secondText,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialLoginBtn(),
                        SizedBox(
                          width: 10,
                        ),
                        SocialLoginBtn()
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an acounts??",
                            style: secondText,
                          ),
                          Text(
                            "SignUp",
                            style: signuplin,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
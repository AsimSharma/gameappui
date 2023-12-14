import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gameappui/config/routes.dart';

import 'package:gameappui/config/style/app_colors.dart';
import 'package:gameappui/widgets/responsive.dart';

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
              height: 0.70.h(context),
              width: width,
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: secondarycolors,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    logoheader(context),
                    const CustomeInputs(
                      hintText: "Emaill",
                      icons: Icons.email,
                      textinputTypes: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const CustomeInputs(
                      hintText: "password",
                      icons: Icons.lock,
                      credentials: true,
                      textinputTypes: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget Password??",
                          style: secondText,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        width: 0.8.w(context),
                        height: 0.07.h(context),
                        child: CustomBtn(
                            btnTitle: "Login",
                            width: width,
                            height: height,
                            onPressed: () {})),
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
                        SocialLoginBtn(
                          icons: FontAwesomeIcons.facebook,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        SocialLoginBtn(
                          icons: FontAwesomeIcons.google,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        SocialLoginBtn(
                          icons: FontAwesomeIcons.twitter,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        SocialLoginBtn(
                          icons: FontAwesomeIcons.github,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an acounts??",
                            style: secondText,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, GameUiApp.register);
                            },
                            child: const Text(
                              "SignUp",
                              style: signuplin,
                            ),
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

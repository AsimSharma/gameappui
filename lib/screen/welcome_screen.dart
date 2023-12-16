import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gameappui/config/style/app_colors.dart';
import 'package:gameappui/widgets/custome_btns.dart';
import 'package:gameappui/widgets/extension_responsive.dart';
import 'package:gameappui/widgets/logo_header.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
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
                color: secondarycolors,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    logoheader(context),
                    CircleAvatar(
                      radius: 0.05.toResponsive(context),
                      backgroundColor: primarycolors,
                      child: FaIcon(
                        FontAwesomeIcons.person,
                        color: Colors.white,
                        size: 0.05.toResponsive(context),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "congratulations",
                      style: myTextStyle(Colors.blue,
                          0.01.toResponsive(context), "Poppinsmedium"),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Now you are Register",
                      style: myTextStyle(
                          textColor, 0.022.toResponsive(context), "Kalnia"),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      height: 2,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Get Ready to play",
                      style: myTextStyle(textColor, 0.01.toResponsive(context),
                          "Poppinsmedium"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        width: 0.9.w(context),
                        height: 0.07.h(context),
                        child:
                            CustomBtn(btnTitle: "Start Now", onPressed: () {}))
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}

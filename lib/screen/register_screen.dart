import 'package:flutter/material.dart';
import 'package:gameappui/config/routes.dart';
import 'package:gameappui/config/style/app_colors.dart';
import 'package:gameappui/widgets/custome_btns.dart';
import 'package:gameappui/widgets/custome_inputs.dart';
import 'package:gameappui/widgets/logo_header.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

final nameController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final confirmpassword = TextEditingController();

class _RegisterScreenState extends State<RegisterScreen> {
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
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: secondarycolors,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    logoheader(),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomeInputs(
                        hintText: "YourName",
                        icons: Icons.person,
                        textEditingController: nameController,
                        textinputTypes: TextInputType.text),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomeInputs(
                        hintText: "Email",
                        icons: Icons.email,
                        textEditingController: emailController,
                        textinputTypes: TextInputType.text),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomeInputs(
                        hintText: "Password",
                        icons: Icons.lock,
                        textEditingController: passwordController,
                        credentials: true,
                        textinputTypes: TextInputType.text),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomeInputs(
                        hintText: "Confirm-password",
                        icons: Icons.lock,
                        credentials: true,
                        textEditingController: confirmpassword,
                        textinputTypes: TextInputType.text),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(children: [
                      Checkbox(value: true, onChanged: (bool) {}),
                      const Expanded(
                        child: Text(
                          "I agree to the terms and conditions ",
                          style: secondText,
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomBtn(btnTitle: "SignUp", onPressed: () {}),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't you have account??",
                            style: secondText),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, GameUiApp.login);
                            },
                            child: const Text("Login", style: signuplin))
                      ],
                    ),
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}

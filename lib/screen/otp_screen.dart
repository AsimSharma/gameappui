import 'package:flutter/material.dart';

import '../style/app_colors.dart';
import '../widgets/custome_btns.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  final pinStyle = const TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              width: double.maxFinite,
              color: primarycolors,
              child: Column(
                // crossAxisAlignment: ,
                children: [
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Verification Code",
                      style: secondText,
                    ),
                  )),
                  Container(
                    height: 280,
                    child: Image.asset("assets/images/verification.png"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Verifications Otp Code",
                    style: headingText,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "we have send verification to your Email Idwe have send verification to your Email Id",
                    style: secondText,
                    textAlign: TextAlign.center,
                  ),
                  //focous node
                  const OTPFields(),
                  CustomBtn(
                    btnTitle: "Done",
                    onPressed: () {},
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class OTPFields extends StatefulWidget {
  const OTPFields({
    Key? key,
  }) : super(key: key);

  @override
  _OTPFieldsState createState() => _OTPFieldsState();
}

class _OTPFieldsState extends State<OTPFields> {
  FocusNode? pin2FN;
  FocusNode? pin3FN;
  FocusNode? pin4FN;
  final pinStyle = const TextStyle(
      fontSize: 32, fontWeight: FontWeight.bold, color: inputcolor);

  @override
  void initState() {
    super.initState();
    pin2FN = FocusNode();
    pin3FN = FocusNode();
    pin4FN = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FN?.dispose();
    pin3FN?.dispose();
    pin4FN?.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 60,
                child: TextFormField(
                  autofocus: true,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) {
                    nextField(value, pin2FN);
                  },
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin2FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) => nextField(value, pin3FN),
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin3FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) => nextField(value, pin4FN),
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin4FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FN!.unfocus();
                    }
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

final inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: BorderSide(color: Colors.grey.shade400),
);
final inputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
  border: inputBorder,
  focusedBorder: inputBorder,
  focusColor: inputcolor,
  enabledBorder: inputBorder,
);

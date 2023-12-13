import 'package:flutter/material.dart';
import 'package:gameappui/style/app_colors.dart';

class CustomeInputs extends StatelessWidget {
  const CustomeInputs(
      {super.key,
      this.textEditingController,
      required this.hintText,
      required this.icons,
      this.validators,
      required this.textinputTypes,
      this.credentials = false,
      this.inputFormatters});

  final TextEditingController? textEditingController;
  final String hintText;
  final IconData icons;
  final dynamic validators;
  final TextInputType textinputTypes;
  final bool credentials;
  final dynamic inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: inputcolor,
      ),
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        obscureText: credentials ? true : false,
        validator: validators,
        controller: textEditingController,
        keyboardType: textinputTypes,
        decoration: InputDecoration(
            focusColor: inputcolor,
            hoverColor: inputcolor,
            fillColor: inputcolor,
            prefixIcon: Icon(
              icons,
              color: Colors.black,
              size: 20,
            ),
            suffixIcon: credentials ? const Icon(Icons.remove_red_eye) : null,
            hintText: hintText,
            filled: true,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
    );
  }
}

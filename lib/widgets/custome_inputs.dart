import 'package:flutter/material.dart';
import 'package:gameappui/config/style/app_colors.dart';
import 'package:gameappui/widgets/responsive.dart';

class CustomeInputs extends StatefulWidget {
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
  State<CustomeInputs> createState() => _CustomeInputsState();
}

class _CustomeInputsState extends State<CustomeInputs> {
  bool obscureTextbool = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.070.h(context),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: inputcolor,
      ),
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        obscureText: obscureTextbool == widget.credentials ? true : false,
        validator: widget.validators,
        controller: widget.textEditingController,
        keyboardType: widget.textinputTypes,
        decoration: InputDecoration(
            focusColor: inputcolor,
            hoverColor: inputcolor,
            fillColor: inputcolor,
            prefixIcon: Icon(
              widget.icons,
              color: Colors.black,
              size: 20,
            ),
            suffixIcon: widget.credentials
                ? IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    onPressed: () {
                      setState(() {
                        obscureTextbool = !obscureTextbool;
                      });
                    },
                  )
                : null,
            hintText: widget.hintText,
            filled: true,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
    );
  }
}

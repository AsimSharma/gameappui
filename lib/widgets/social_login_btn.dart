import 'package:flutter/material.dart';
import 'package:gameappui/style/app_colors.dart';

class SocialLoginBtn extends StatelessWidget {
  const SocialLoginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: secondarycolors,
      child: Icon(
        Icons.facebook,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}

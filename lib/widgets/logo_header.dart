import 'package:flutter/material.dart';

import '../config/style/app_colors.dart';

Container logoheader() {
  return Container(
    height: 50,
    padding: const EdgeInsets.all(10),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.abc,
          color: Colors.white,
          size: 36,
        ),
        Text(
          "Mero Game",
          style: headingText,
        )
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:gameappui/widgets/responsive.dart';

import '../config/style/app_colors.dart';

Container logoheader(BuildContext context) {
  return Container(
    height: 0.08.h(context),
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.abc,
          color: Colors.orange,
          size: 52,
        ),
        Text(
          "Mero Game",
          style:
              myTextStyle(logoColor, 0.03.toResponsive(context), "Rubikbubble"),
        )
      ],
    ),
  );
}

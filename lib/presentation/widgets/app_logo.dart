import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/layout/adaptive.dart';
import 'package:ismail_portfolio/core/values/values.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Ismail\n-Alshofi",
      style: TextStyle(
        color: AppColors.textColor,
        fontWeight: FontWeight.bold,
        fontSize: responsiveSize(context, 12, 15),
      ),
    );
  }
}
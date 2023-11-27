import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/layout/adaptive.dart';
import 'package:ismail_portfolio/core/utils/common.dart';
import 'package:ismail_portfolio/core/utils/extensions/context_extensions.dart';
import 'package:ismail_portfolio/core/utils/extensions/int_extensions.dart';
import 'package:ismail_portfolio/core/utils/extensions/widget_extensions.dart';
import 'package:ismail_portfolio/core/values/values.dart';

import '../pages/about_page/about_page.dart';
import 'animated_text.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: assignHeight(context, 0.2),
      color: AppColors.pink,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical : responsiveSize(context, 15.0, 30), horizontal: responsiveSize(context, 5.0, 10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const AnimatedText(text: AppText.homeMenuItem),
            responsiveSizeInt(context, 20, 30).width,
            const AnimatedText(text: AppText.workMenuItem),
            responsiveSizeInt(context, 20, 30).width,
            const AnimatedText(text: AppText.contactMenuItem),
            responsiveSizeInt(context, 20, 30).width,
            const AnimatedText(text: AppText.aboutMenuItem).onTap(() => context.push(buildPageRoute(const AboutPage(), PageRouteAnimation.Slide, 300.milliseconds))),
            responsiveSizeInt(context, 20, 30).width,
            const AnimatedText(text: AppText.resumeMenuItem),
            20.width,
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/layout/adaptive.dart';
import 'package:ismail_portfolio/core/values/values.dart';
import 'package:ismail_portfolio/presentation/widgets/spaces.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.pink,
      child: ResponsiveBuilder(builder: (context, sizingInformation) {
        double screenWidth = sizingInformation.screenSize.width;
        if (screenWidth > const RefinedBreakpoints().tabletNormal) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SpaceH100(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  headingText(context),
                ],
              ),
              const SpaceH200(),
            ],
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SpaceH50(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  headingText(context),
                ],
              ),
              const SpaceH200(),
            ],
          );
        }
      }),
    );
  }

  Widget headingText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          AppText.welcomeText,
          style: TextStyle(
            fontSize: responsiveSize(context, 15, 30),
            fontWeight: FontWeight.w500,
            color: AppColors.textColor,
          ),
        ),
        const SpaceH30(),
        Row(
          children: [
            Text(
              AppText.flutter,
              style: TextStyle(
                fontSize: responsiveSize(context, 75, 140),
                height: 1,
                fontWeight: FontWeight.w500,
                color: AppColors.textColor,
              ),
            ),
            const SpaceW60(),
            orangeImageContainer(context, 0.12),
          ],
        ),
        Text(
          AppText.developer,
          style: TextStyle(
            fontSize: responsiveSize(context, 75, 140),
            height: 1,
            fontWeight: FontWeight.w500,
            color: AppColors.textColor,
          ),
        ),
      ],
    );
  }

  Widget orangeImageContainer(BuildContext context, double fraction) {
    return Container(
      height: assignHeight(context, 0.2),
      width: assignWidth(context, fraction),
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const SizedBox(),
    );
  }
}

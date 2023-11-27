import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/layout/adaptive.dart';
import 'package:ismail_portfolio/core/utils/extensions/int_extensions.dart';
import 'package:ismail_portfolio/core/utils/extensions/widget_extensions.dart';
import 'package:ismail_portfolio/core/values/values.dart';
import 'package:ismail_portfolio/presentation/widgets/on_hover.dart';
import 'package:ismail_portfolio/presentation/widgets/spaces.dart';

class LetsTalk extends StatelessWidget {
  final List contact = [
    {
      "icon": "assets/icons/linked-in.png",
      "url": "",
    },
    {
      "icon": "assets/icons/skype.png",
      "url": "",
    },
    {
      "icon": "assets/icons/telegram.png",
      "url": "",
    },
    {
      "icon": "assets/icons/twitter.png",
      "url": "",
    },
    {
      "icon": "assets/icons/github.png",
      "url": "",
    },
  ];
  LetsTalk({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: AppColors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SpaceH16(),
          Container(
            height: assignHeight(context, 0.15),
            width: responsiveSize(
                context, assignWidth(context, 0.2), assignWidth(context, 0.1)),
            decoration: BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const SizedBox(),
          ),
          Text(
            AppText.letsTalk,
            style: TextStyle(
              fontSize: responsiveSize(context, 40, 80),
              fontWeight: FontWeight.w500,
              height: 1,
              color: AppColors.silver,
            ),
          ),
          OnHover(
            builder: (isHoverd) => AnimatedOpacity(
              opacity: isHoverd ? 1 : 0.15,
              duration: 600.milliseconds,
              child: Text(
                AppText.feelFreeToTalk,
                style: TextStyle(
                  fontSize: responsiveSize(context, 12, 25),
                  fontWeight: FontWeight.w200,
                  color: AppColors.silver,
                ),
              ),
            ),
          ),
          OnHover(
            builder: (isHoverd) => AnimatedContainer(
              duration: 350.milliseconds,
              width: isHoverd ? 225 : 50,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.orange, width: 1),
                color: AppColors.black,
                borderRadius: isHoverd
                    ? BorderRadius.circular(25)
                    : BorderRadius.circular(60),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    isHoverd
                        ? Icons.send
                        : Icons.keyboard_double_arrow_right_rounded,
                    color: AppColors.orange,
                    size: 12,
                  ),
                  AnimatedDefaultTextStyle(
                    duration: 350.milliseconds,
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: AppColors.silver,
                      fontWeight: FontWeight.w500,
                      fontSize: isHoverd ? responsiveSize(context, 12, 15) : 0,
                    ),
                    child: const Text(
                      AppText.myEmail,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              Data.socialData.length,
              (index) => OnHover(
                builder: (isHoverd) => AnimatedContainer(
                  transform: isHoverd
                      ? (Matrix4.identity()..scale(1.1, 1.1, 1.0))
                      : Matrix4.identity(),
                  duration: 100.milliseconds,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Data.socialData[index].iconData, color: AppColors.orange),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              AppText.copyRight,
              style: TextStyle(
                fontSize: responsiveSize(context, 12, 15),
                fontWeight: FontWeight.w300,
                color: AppColors.white,
              ),
            ),
          ).paddingAll(8.sp),
        ],
      ),
    );
  }
}

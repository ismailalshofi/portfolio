import 'package:flutter/material.dart';
import 'package:ismail_portfolio/constants/app_colors.dart';
import 'package:ismail_portfolio/core/utils/extensions/int_extensions.dart';
import 'package:ismail_portfolio/core/utils/extensions/widget_extensions.dart';
import 'package:ismail_portfolio/presentation/widgets/on_hover.dart';

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
      width: size.width,
      height: size.height,
      color: AppColors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Container(
            height: 250.h,
            width: 300.w,
            decoration: BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const SizedBox(),
          ),
          Text(
            "Let's work together",
            style: TextStyle(
              fontSize: 180.sp,
              fontWeight: FontWeight.w500,
              height: 1,
              color: AppColors.silver,
            ),
          ),
          OnHover(
            builder: (isHoverd) => AnimatedOpacity(
              opacity: isHoverd ? 1 : 0.1,
              duration: const Duration(milliseconds: 600),
              child: AnimatedDefaultTextStyle(
                style: TextStyle(
                  fontSize: 50.sp,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w200,
                  color: AppColors.silver,
                ),
                duration: const Duration(milliseconds: 150),
                child: const Text(
                    "Feel free to reach out anytime, I'm available for Consultancy & Freelancing"),
              ),
            ),
          ),
          OnHover(
            builder: (isHoverd) => AnimatedContainer(
              duration: 350.milliseconds,
              width: isHoverd ? size.width / 5 : 70.w,
              height: 60.h,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.orange, width: 1),
                color: const Color(0xdd000000),
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
                    size: 30.sp,
                  ),
                  AnimatedDefaultTextStyle(
                    duration: 350.milliseconds,
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: AppColors.silver,
                      fontWeight: FontWeight.w500,
                      fontSize: isHoverd ? 35.sp : 0,
                    ),
                    child: const Text(
                      "ialshofi@gmail.com",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contact.length,
              (index) => OnHover(
                builder: (isHoverd) => AnimatedContainer(
                    transform: isHoverd
                        ? (Matrix4.identity()..scale(1.1, 1.1, 1.0))
                        : Matrix4.identity(),
                    duration: 100.milliseconds,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image(image: AssetImage(contact[index]["icon"]))),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "© 2023 Built & Desiged By Ismail Alshofi",
              style: TextStyle(
                fontSize: 25.sp,
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

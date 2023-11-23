import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/utils/extensions/int_extensions.dart';
import 'package:ismail_portfolio/core/values/values.dart';
import 'package:ismail_portfolio/presentation/widgets/animated_scroll_button.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          200.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    AppText.welcomeText,
                    style: TextStyle(
                      fontSize: 50.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColor,
                    ),
                  ),
                  Text(
                    AppText.flutterDev,
                    style: TextStyle(
                      fontSize: 250.sp,
                      height: 1,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColor,
                    ),
                  ),
                ],
              ),
              Container(
                height: 260.h,
                width: 300.w,
                decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const SizedBox(),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(),
              SizedBox(),
              AnimatedScrollButton(),
            ],
          ),
          200.height
        ],
      ),
    );
  }
}

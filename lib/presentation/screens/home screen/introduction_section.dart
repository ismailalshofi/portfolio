import 'package:flutter/material.dart';
import 'package:ismail_portfolio/constants/app_text.dart';
import 'package:ismail_portfolio/presentation/utils/extensions.dart';
import 'package:ismail_portfolio/presentation/utils/spacer.dart';
import 'package:ismail_portfolio/presentation/widgets/animated_scroll_button.dart';

import '../../../constants/app_colors.dart';

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
           SizedBox(height: 250.getH(context)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 
                  Text(
                    AppText.welcomeText,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    AppText.flutterDev,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              Container(
                height: 200.getH(context),
                width: 200.getW(context),
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
          SizedBox(height: 200.getH(context)),
        ],
      ),
    );
  }
}

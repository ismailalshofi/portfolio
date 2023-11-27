import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/utils/extensions/widget_extensions.dart';
import 'package:ismail_portfolio/core/values/values.dart';
import 'package:ismail_portfolio/presentation/widgets/spaces.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        color: AppColors.pink,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 500,
                  height: 600,
                  color: AppColors.orange,
                  child: Text("s"),
                ).cornerRadiusWithClipRRect(25),
                SizedBox(
                  height: 600,
                  width: 500,
                  child: ListView(
                    children: [
                      Text(
                        AppText.aboutMe,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black08,
                        ),
                      ),
                      const SpaceH20(),
                      Text(
                        AppText.aboutMeText,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black08,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

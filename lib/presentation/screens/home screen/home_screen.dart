import 'package:flutter/material.dart';
import 'package:ismail_portfolio/constants/app_colors.dart';
import 'package:ismail_portfolio/constants/app_style.dart';
import 'package:ismail_portfolio/presentation/utils/extensions.dart';
import 'package:ismail_portfolio/presentation/utils/spacer.dart';
import 'package:ismail_portfolio/presentation/widgets/animated_text.dart';

import 'introduction_section.dart';
import 'lets_talk_section.dart';
import 'work_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pink,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _buildAppBar(),
                const Intro(),
                const Work(),
                LetsTalk()
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: _buildAppLogo(),
          )
        ],
      ),
    );
  }

  _buildAppBar() {
    return Container(
      height: (100).getH(context),
      color: AppColors.pink,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const AnimatedText(text: " Home "),
            SizedBox(width: 40.getW(context)),
            const AnimatedText(text: " Work "),
            SizedBox(width: 40.getW(context)),
            const AnimatedText(text: "Contact"),
            SizedBox(width: 40.getW(context)),
            const AnimatedText(text: " About"),
            SizedBox(width: 40.getW(context)),
            const AnimatedText(text: "Resume"),
            SizedBox(width: 40.getW(context)),
          ],
        ),
      ),
    );
  }

  _buildAppLogo() {
    return const Text("Ismail\n-Alshofi", style: AppStyles.logoItemStyle);
  }
}

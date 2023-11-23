import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/utils/extensions/int_extensions.dart';
import 'package:ismail_portfolio/core/values/values.dart';
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
      height: 100.h,
      color: AppColors.pink,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const AnimatedText(text: " Home "),
            40.width,
            const AnimatedText(text: " Work "),
            40.width,
            const AnimatedText(text: "Contact"),
            40.width,
            const AnimatedText(text: " About"),
            40.width,
            const AnimatedText(text: "Resume"),
            40.width,
          ],
        ),
      ),
    );
  }

  _buildAppLogo() {
    return Text(
      "Ismail\n-Alshofi",
      style: TextStyle(
        color: AppColors.textColor,
        fontSize: 30.sp,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/values/values.dart';
import 'package:ismail_portfolio/presentation/widgets/app_logo.dart';
import '../../widgets/app_bar.dart';
import 'introduction_section.dart';
import 'lets_talk_section.dart';
import 'work_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pink,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const AppNavigationBar(),
                const Intro(),
                const Work(),
                LetsTalk()
              ],
            ),
          ),
          const Positioned(
            top: 10,
            left: 10,
            child: AppLogo(),
          )
        ],
      ),
    );
  }
}

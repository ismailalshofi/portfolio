import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/values/values.dart';


class WhyHireMeScreen extends StatelessWidget {
  const WhyHireMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.lightCyan,
      child: Center(child: customCard(size)),
    );
  }

  Widget customCard(Size size) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        infoCard(size),
        Positioned(top: 40,child: infoCard(size)),
        Positioned(top: 80,child: infoCard(size)),
      ],
    );
  }

  Widget infoCard(Size size) {
    return Container(
      width: size.width / 3,
      height: size.height / 2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 5),
            color: AppColors.black.withOpacity(0.2),
            blurRadius: 30,
          )
        ],
      ),
      child: Column(
        children: List.generate(10, (index) => Text("sss")),
      ),
    );
  }
}

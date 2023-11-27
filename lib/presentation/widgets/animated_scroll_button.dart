import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/layout/adaptive.dart';

import '../../core/values/values.dart';

class AnimatedScrollButton extends StatefulWidget {
  const AnimatedScrollButton({Key? key}) : super(key: key);
  @override
  State<AnimatedScrollButton> createState() => _AnimatedScrollButtonState();
}

class _AnimatedScrollButtonState extends State<AnimatedScrollButton> {
  bool isHoverd = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: AnimatedContainer(
        duration: Animations.animatedButtons,
        width: responsiveSize(context, 30, 40),
        height: isHoverd ? responsiveSize(context, 70, 100) : 50,
        decoration: BoxDecoration(
          color: const Color(0xdd000000),
          borderRadius:
              isHoverd ? BorderRadius.circular(20) : BorderRadius.circular(60),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 350),
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: isHoverd ? responsiveSize(context, 10, 15) : 0,
                ),
                child: const Text(
                  "SCROLL",
                ),
              ),
            ),
             const Icon(
              Icons.keyboard_double_arrow_down_rounded,
              color: AppColors.orange,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }

  void onHover(isHoverd) {
    setState(() {
      this.isHoverd = isHoverd;
    });
  }
}

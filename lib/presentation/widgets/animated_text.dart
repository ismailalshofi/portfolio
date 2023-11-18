import 'package:flutter/material.dart';
import 'package:ismail_portfolio/constants/app_colors.dart';
import 'package:ismail_portfolio/core/utils/extensions/int_extensions.dart';

class AnimatedText extends StatefulWidget {
  final String text;

  const AnimatedText({Key? key, required this.text}) : super(key: key);

  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  bool isHoverd = false;
  @override
  Widget build(BuildContext context) {
    final hoverd = Matrix4.identity()..scale(1.1, 1.1, 1.0);
    final transform = isHoverd ? hoverd : Matrix4.identity();
    return MouseRegion(
      onHover: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: AnimatedContainer(
        duration: const Duration(microseconds: 200),
        transform: transform,
        child: SizedBox(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor.withOpacity(0.8),
                  fontSize: 30.sp),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              height: 2,
              width: isHoverd ? 70.w : 0,
              color: AppColors.textColor,
              child: const SizedBox(),
            )
          ],
        )),
      ),
    );
  }

  void onHover(isHoverd) {
    setState(() {
      this.isHoverd = isHoverd;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:ismail_portfolio/constants/app_colors.dart';
import 'package:ismail_portfolio/constants/app_style.dart';
import 'package:ismail_portfolio/presentation/utils/extensions.dart';

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
              Text( widget.text, style : Theme.of(context).textTheme.bodySmall),
              AnimatedContainer(
                duration: const Duration(milliseconds: 350),
                height: 2,
                width: isHoverd ? 40.getW(context) : 0,
                color: AppColors.textColor,
                child:const SizedBox(),
              )
            ],
          )
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

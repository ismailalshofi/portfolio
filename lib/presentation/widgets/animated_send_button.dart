import 'package:flutter/material.dart';
import 'package:ismail_portfolio/constants/app_colors.dart';

class AnimatedSendButton extends StatefulWidget {
  const AnimatedSendButton({Key? key}) : super(key: key);

  @override
  _AnimatedSendButtonState createState() => _AnimatedSendButtonState();
}

class _AnimatedSendButtonState extends State<AnimatedSendButton> {
  bool isHoverd = false;
  Widget iconWidget = Icon(Icons.mail);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onHover: (_) => onHover(true),
        onExit: (_) => onHover(false),
        child: AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            switchInCurve: Curves.easeIn,
            switchOutCurve: Curves.easeInBack,

            child: iconWidget
        ));
  }

  void onHover(isHoverd) {
    setState(() {
      if (isHoverd) {
        iconWidget = Icon(Icons.send);
      }
      else {
        iconWidget = Icon(Icons.mail);
      }

      this.isHoverd = isHoverd;
    });
  }
}

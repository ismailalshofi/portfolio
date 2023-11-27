import 'package:flutter/material.dart';

class AnimatedSendButton extends StatefulWidget {
  const AnimatedSendButton({Key? key}) : super(key: key);

  @override
  State<AnimatedSendButton> createState() => _AnimatedSendButtonState();
}

class _AnimatedSendButtonState extends State<AnimatedSendButton> {
  bool isHoverd = false;
  Widget iconWidget = const Icon(Icons.mail);

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
        iconWidget = const Icon(Icons.send);
      }
      else {
        iconWidget = const Icon(Icons.mail);
      }

      this.isHoverd = isHoverd;
    });
  }
}

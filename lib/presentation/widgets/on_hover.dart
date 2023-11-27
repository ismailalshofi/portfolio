import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {
  final Widget Function(bool isHoverd) builder;

  const OnHover({Key? key, required this.builder}) : super(key: key);

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHoverd = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: widget.builder(isHoverd),
    );
  }

  void onHover(isHoverd) {
    setState(() {
      this.isHoverd = isHoverd;
    });
  }
}

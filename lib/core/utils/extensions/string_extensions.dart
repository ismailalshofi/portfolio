import 'package:flutter/material.dart';

RegExp alphaRegExp = RegExp(r'^[a-zA-Z]+$');

extension StringExtension on String? {
  

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

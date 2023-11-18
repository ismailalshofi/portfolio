import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ismail_portfolio/core/utils/extensions/int_extensions.dart';
import '../utils/functions.dart';


Color defaultToastBackgroundColor = Colors.grey.shade200;
Color defaultToastTextColor = Colors.black;
ToastGravity defaultToastGravityGlobal = ToastGravity.CENTER;

Duration pageRouteTransitionDurationGlobal = 400.milliseconds;

class AppStore {
  bool isDarkMode = false;
  final double defaultWidth = 1024;
  final double defaultHeight = 1920;

  double width = 0;
  double height = 0;

  initial() async{

    Size screenSize = MediaQueryData.fromView(PlatformDispatcher.instance.implicitView!).size;
    Orientation orientation = MediaQueryData.fromView(PlatformDispatcher.instance.implicitView!).orientation;
    
    if (orientation == Orientation.portrait) {
      width = screenSize.width;
      height = screenSize.height;
    } else {
      width = screenSize.height;
      height = screenSize.width;
    }
    Printer.printDone("=> Done adding device size .");

  }

  
}

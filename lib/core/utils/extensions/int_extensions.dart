import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/app_store/app_store.dart';
import 'package:ismail_portfolio/configure_di.dart';

extension IntExtensions on int? {
  int validate({int value = 0}) => this ?? value;
  bool isSuccessful() => this! >= 200 && this! <= 206;

  Widget get height => SizedBox(height: this?.toDouble());
  Widget get width => SizedBox(width: this?.toDouble());

  Duration get microseconds => Duration(microseconds: validate());
  Duration get milliseconds => Duration(milliseconds: validate());
  Duration get seconds => Duration(seconds: validate());
  Duration get minutes => Duration(minutes: validate());
  Duration get hours => Duration(hours: validate());
  Duration get days => Duration(days: validate());

  double get h =>
      ((this! * getIt<AppStore>().height) / getIt<AppStore>().defaultHeight);

  double get w =>
      ((this! * getIt<AppStore>().width) / getIt<AppStore>().defaultWidth);

  double get sp =>
      ((getIt<AppStore>().width * getIt<AppStore>().height) * this!) /
      (getIt<AppStore>().defaultHeight * getIt<AppStore>().defaultWidth);
}

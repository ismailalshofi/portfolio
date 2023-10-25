import 'package:flutter/material.dart';


double height = 1024;
double width = 1920;

extension PercentSized on int {
  double getH(BuildContext context) => ((this * MediaQuery.of(context).size.height) / height);

  double getW(BuildContext context) => ((this * MediaQuery.of(context).size.width) / width);

  double getSP(BuildContext context) =>
      ((MediaQuery.of(context).size.height * MediaQuery.of(context).size.width) *this) / (height * width);
}

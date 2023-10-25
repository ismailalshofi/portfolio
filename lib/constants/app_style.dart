import 'package:flutter/material.dart';
import 'package:ismail_portfolio/constants/app_colors.dart';
import 'package:ismail_portfolio/presentation/utils/extensions.dart';

class AppStyles {
  static TextStyle menuItemStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.textColor.withOpacity(0.8),
    fontSize: 13
  );

    static const TextStyle logoItemStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
    fontSize: 18
  );
}

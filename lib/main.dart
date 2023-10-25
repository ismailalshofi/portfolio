import 'package:flutter/material.dart';
import 'package:ismail_portfolio/constants/app_colors.dart';
import 'package:ismail_portfolio/presentation/utils/extensions.dart';
import 'presentation/screens/home screen/home_screen.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ismail\'s Portfolio',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Outfit',
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 180.getW(context),
            height: 1,
            fontWeight: FontWeight.w500,
            color: AppColors.textColor,
          ),
          titleSmall: TextStyle(
            fontSize: 30.getW(context),
            fontWeight: FontWeight.w500,
            color: AppColors.textColor,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.textColor.withOpacity(0.8),
            fontSize: 18.getW(context),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        // '/about': (context) => const AboutScreen()
      },
    );
  }
}

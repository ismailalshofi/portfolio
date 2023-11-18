import 'package:flutter/material.dart';
import 'package:ismail_portfolio/configure_di.dart';
import 'package:ismail_portfolio/constants/app_colors.dart';
import 'package:ismail_portfolio/core/app_store/app_store.dart';
import 'package:ismail_portfolio/core/utils/extensions/int_extensions.dart';
import 'presentation/screens/home screen/home_screen.dart';

void main() async{
  
  await configureInjection();
  await getIt<AppStore>().initial();
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
        
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}

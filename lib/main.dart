import 'package:flutter/material.dart';
import 'package:ismail_portfolio/configure_di.dart';
import 'package:ismail_portfolio/core/app_store/app_store.dart';
import 'package:ismail_portfolio/core/layout/adaptive.dart';
import 'package:ismail_portfolio/core/values/values.dart';
import 'package:ismail_portfolio/presentation/pages/about_page/about_page.dart';
import 'package:layout/layout.dart';
import 'presentation/pages/home_page/home_page.dart';

void main() async{
  await configureInjection();
  await getIt<AppStore>().initial();
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppText.title,
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'Outfit',
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const AboutPage(),
        },
      ),
    );
  }
}

class TTOOTT extends StatelessWidget {
  const TTOOTT({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SizedBox(
          height: responsiveSize(context, 200, 500),
          child: Text("Ismail", style: TextStyle(
            fontSize: responsiveSize(context, 25, 50)
          ),),
        ),
      ),
    );
  }
}
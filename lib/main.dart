import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sic_app/services/theme.dart';
import 'package:sic_app/views/home/home.dart';
import 'package:sic_app/views/home/pay_premium.dart';
import 'package:sic_app/views/splash_screen.dart';
import 'package:sic_app/views/widgets/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));
    return GetMaterialApp(
      title: 'Sic App',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        'navbar': (BuildContext context) => const BottomNavbar(),
        'home': (BuildContext context) => const HomeScreen(),
        'paypremium': (BuildContext context) => const PayPremium(),
      },
    );
  }
}

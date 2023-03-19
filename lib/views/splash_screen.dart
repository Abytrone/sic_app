import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoggedIn = false;

  @override
  void initState() {
    startTime();
    super.initState();
  }

  // / Setting duration in splash screen
  startTime() async {
    return Timer(const Duration(milliseconds: 5500), navigatorPage);
  }

  /// To navigate layout change
  void navigatorPage() {
    Navigator.of(context).pushReplacementNamed("navbar");
  }

  @override
  void didChangeDependencies() {
    precacheImage(Image.asset('assets/app_icon/logo.jpg').image, context);
    super.didChangeDependencies();
  }

  /// Code Create UI Splash Screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Center(
          child: Container(
            height: constraints.maxWidth < 768 ? 150 : 250,
            width: constraints.maxWidth < 768 ? 150 : 250,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              // borderRadius: const BorderRadius.all(Radius.circular(15)),
              // border: Border.all(width: 1),
              image: DecorationImage(
                image: AssetImage('assets/app_icon/logo.jpg'),
              ),
            ),
          ),
        );
      }),
    );
  }
}

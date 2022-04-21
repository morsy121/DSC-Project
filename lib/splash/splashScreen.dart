import 'dart:async';

import 'package:dscproject/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Timer(
        const Duration(seconds: 2),
        (() {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePageScreen()),
          );
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 350,
          height: 350,
          child: Image.asset(
            'assets/images/splash.webp',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

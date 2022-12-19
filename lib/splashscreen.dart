import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simplilearn_ui/onboarding.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        (() => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const OnBoarding()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  'images/Simplilearn.png',
                  height: 200,
                  width: 200,
                ),
              ],
            ),
           // const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_project/screens/onboarding/onbording.dart';
import 'package:food_project/widget/app_color.dart';
import 'package:food_project/widget/app_text.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate loading time
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnBoarding(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash.png'),
            TextWidget(
              text: 'FOOD PROJECT',
              color: AppColors.mainColor,
              size: 40,
              fontWeight: FontWeight.bold,
              textalign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/home_screen.dart';
import 'screens/mymainscreen.dart';
import 'screens/signin&signup/signin_screen.dart';
import 'screens/signin&signup/signup_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SplashScreen(),
      routes: {
        '/': (context) => const SplashScreen(),
        'MyHomeScreen': (context) => MyHomeScreen(),
        'MyMainScreen': (context) => const MyMainScreen(),
        'SignInScreen': (context) => const SignInScreen(),
        'SignUpScreen': (context) => const SignUpScreen(),
      },
    );
  }
}

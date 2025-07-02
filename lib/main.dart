import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grad_project/features/onboarding/splash_screen.dart';
import 'package:grad_project/features/students/ui/Bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          fontFamily: "Plus Jakarta Sans",
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

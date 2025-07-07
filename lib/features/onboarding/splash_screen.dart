// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/features/onboarding/onBoarding_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
   void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      navigateTo(context, screen:OnboardingScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(
           color: AppColor.white,
          ),
          child: Center(child: Image(
            image: AssetImage(AppAssets.university),),),
        ),
      ),

    );
  }
}
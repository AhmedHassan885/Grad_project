// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:grad_project/features/onboarding/onBoarding_screen.dart';
import 'package:grad_project/features/onboarding/splash_screen.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashScreen: (context) => SplashScreen(),
    RoutesName.konboardingPage: (context) => OnboardingScreen(),

    // RoutesName.kRegisterAsScreen:(context)=> RegisterAsScreen(),
  };
}

class RoutesName {
  static const String kSplashScreen = "/KsplashScreen";
  static const String konboardingPage = "/KonboardingPage";
  static const String kSignInScreen = "/kSignInScreen";
  static const String kHomeScreen = "/kHomeScreen";
  static const String kRegisterScreen = "/kRegisterScreen";
  static const String kRSignInScreenAndlogin = "/SignInScreenAndlogin";
  static const String kResetPasswordScreen = "/ResetPasswordScreen";
  static const String kRegisterAsScreen = "/kRegisterAsScreen";
  static const String DoctorScreen = "/DoctorScreen";
  static const String AddPostScreen = "/AddPostScreen";
  static const String AddLectureScreen = "/AddLectureScreen";
  static const String AddTaskScreen = "/AddTaskScreen";
  static const String UploadsScreen = "/UploadsScreen";
  static const String demonstratorScreen = "/DemonstratorScreen";
}

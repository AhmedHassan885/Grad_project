import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:grad_project/features/auth/manager/auth_cubit.dart';
import 'package:grad_project/features/onboarding/splash_screen.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(create: (_) => AuthCubit()),
        // BlocProvider<AdminCubit>(create: (_) => AdminCubit(AdminRepo(APIHelper()))),
      ],
      child: const MyApp(),
    ),
  );
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
      home:SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:grad_project/core/services/service_locator.dart';
import 'package:grad_project/features/auth/manager/auth_cubit.dart';
import 'package:grad_project/features/onboarding/splash_screen.dart';

void main() {
  setupServiceLocator();
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

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized(); // لازم لأي كود async في main
//
//   final dio = Dio();
//   dio.options.headers['Authorization'] = 'Bearer YOUR_TOKEN_HERE'; // أو ضيفه زي ما بتحطه في المشروع
//
//   final apiService = ApiService(dio: dio);
//    final repo = AllPostsRepoImp(apiService: apiService);
//
//    final result = await repo.fetchAllPosts();;
//
//   result.fold(
//         (failure) => print('❌ Error: ${failure.errorMessage}'),
//         (courses) {
//       print('✅ Courses Fetched: ${courses.length}');
//       for (var course in courses) {
//          print('📚 Course Title: ${course.comments}');
//         print('👨‍🏫 Instructor: ${course.content}');
//         print('🎓 Level: ${course.attachments}');
//         print('------------------------');
//       }
//     },
//   );
//
//   runApp(const MyApp());
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          fontFamily: "Plus Jakarta Sans",
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(color: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

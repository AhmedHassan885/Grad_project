import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:grad_project/core/services/api_service.dart';
import 'package:grad_project/features/students/data/repos/all_courses_repo/all_courses_repo_imp.dart';
import 'package:grad_project/features/students/data/repos/all_doctor_repo/all_doctor_repo_imp.dart';
import 'package:grad_project/features/students/data/repos/all_material_repo/all_material_repo_imp.dart';
import 'package:grad_project/features/students/data/repos/all_posts_repo/all_posts_repo_imp.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<AllDoctorsRepoImp>(AllDoctorsRepoImp(apiService:getIt.get<ApiService>(),
  ));
 getIt.registerSingleton<AllMaterialRepoImp>(AllMaterialRepoImp(apiService:getIt.get<ApiService>(),
  ));
  getIt.registerSingleton<AllCoursesRepoImp>(AllCoursesRepoImp(apiService:getIt.get<ApiService>(),
  ));
  getIt.registerSingleton<AllPostsRepoImp>(AllPostsRepoImp(apiService:getIt.get<ApiService>(),
  ));



}

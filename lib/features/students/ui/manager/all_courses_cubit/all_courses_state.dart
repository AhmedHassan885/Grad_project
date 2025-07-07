import 'package:flutter/foundation.dart';
import 'package:grad_project/features/students/data/model/all_courses_model/AllCoursesModel.dart';

@immutable
sealed class AllCoursesState {}

final class AllCoursesInitial extends AllCoursesState {}

final class AllCoursesLoading extends AllCoursesState {}

final class AllCoursesSuccess extends AllCoursesState {
  final List<AllCoursesModel> coursesList;
  AllCoursesSuccess({required this.coursesList});
}

final class AllCoursesFailure extends AllCoursesState {
  final String errorMessage;
  AllCoursesFailure({required this.errorMessage});
}

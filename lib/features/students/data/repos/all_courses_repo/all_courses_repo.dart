import 'package:dartz/dartz.dart';
import 'package:grad_project/core/errors/failure.dart';
import 'package:grad_project/features/students/data/model/all_courses_model/AllCoursesModel.dart';

abstract class AllCoursesRepo {
  Future<Either<Failure, List<AllCoursesModel>>> fetchAllCourses();


}
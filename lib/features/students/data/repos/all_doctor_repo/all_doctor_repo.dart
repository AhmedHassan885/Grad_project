import 'package:dartz/dartz.dart';
import 'package:grad_project/core/errors/failure.dart';
import 'package:grad_project/features/students/data/model/doctor_model/DoctorsModel.dart';

abstract class AllDoctorRepo {
  Future<Either<Failure, List<DoctorsModel>>> fetchAllDoctors();
  
  
}
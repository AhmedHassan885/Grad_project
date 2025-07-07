// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:grad_project/core/errors/failure.dart';
import 'package:grad_project/core/services/api_service.dart';
import 'package:grad_project/features/students/data/model/doctor_model/DoctorsModel.dart';
import 'package:grad_project/features/students/data/repos/all_doctor_repo/all_doctor_repo.dart';

class AllDoctorsRepoImp implements AllDoctorRepo{
  ApiService apiService;

  AllDoctorsRepoImp({required this.apiService});
  @override
Future<Either<Failure, List<DoctorsModel>>> fetchAllDoctors() async{
    try {
      var data = await apiService.get(endPoint:'instructors');
     // print('All Doctors List : $data');
      List<DoctorsModel> doctors = [];
      if (data['data'] != null) {
        for (var item in data['data']) {
          doctors.add(DoctorsModel.fromJson(item));
        }
        print(data['data']);
      } else {
        return left(ServerFailure(errorMessage: 'No items found'));
      }
      return right(doctors);
    } on Exception catch (e) {
      if (e is DioException) {
        log('DioError occurred: ${e.message}');
        return left(ServerFailure.fromDioError(e));
      }
      log('Exception occurred: $e');
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
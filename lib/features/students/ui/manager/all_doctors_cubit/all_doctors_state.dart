import 'package:flutter/foundation.dart';
import 'package:grad_project/features/students/data/model/doctor_model/DoctorsModel.dart';

@immutable
sealed class AllDoctorsState {}

final class AllDoctorsInitial extends AllDoctorsState {}

final class AllDoctorsLoading extends AllDoctorsState {}

final class AllDoctorsSuccess extends AllDoctorsState {
  final List<DoctorsModel> doctorsList;
  AllDoctorsSuccess({required this.doctorsList});
}

final class AllDoctorsFailure extends AllDoctorsState {
  final String errorMessage;
  AllDoctorsFailure({required this.errorMessage});
}

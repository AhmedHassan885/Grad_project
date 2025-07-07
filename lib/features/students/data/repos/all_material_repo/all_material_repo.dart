import 'package:dartz/dartz.dart';
import 'package:grad_project/core/errors/failure.dart';
import 'package:grad_project/features/students/data/model/all_material_model/AllMaterialModel.dart';

abstract class AllMaterialRepo {
  Future<Either<Failure, List<AllMaterialModel>>> fetchAllMaterials();
}
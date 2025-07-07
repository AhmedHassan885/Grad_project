import 'package:bloc/bloc.dart';
import 'package:grad_project/features/students/data/repos/all_material_repo/all_material_repo.dart';
import 'package:grad_project/features/students/ui/manager/all_material_cubit/all_material_state.dart';


class AllMaterialCubit extends Cubit<AllMaterialState> {
  AllMaterialCubit(this.allMaterialRepo) : super(AllMaterialInitial());
  final AllMaterialRepo allMaterialRepo;
  Future<void> fetchAllMaterials() async {
    emit(AllMaterialLoading());
    try {
      final result = await allMaterialRepo.fetchAllMaterials();
      result.fold((l) => emit(AllMaterialFailure(errorMessage: l.errorMessage)), (r) => emit(AllMaterialSuccess(materialsList: r)));
    } on Exception catch (e) {
      emit(AllMaterialFailure(errorMessage: e.toString()));
    }
  }
}


import 'package:bloc/bloc.dart';
import 'package:grad_project/features/students/data/repos/all_courses_repo/all_courses_repo.dart';
import 'package:grad_project/features/students/ui/manager/all_courses_cubit/all_courses_state.dart';


class AllCoursesCubit extends Cubit<AllCoursesState> {
  AllCoursesCubit(this.allCoursesRepo) : super(AllCoursesInitial());
  final AllCoursesRepo allCoursesRepo;
  Future<void> fetchAllCourses() async {
    emit(AllCoursesLoading());
    try {
      final result = await allCoursesRepo.fetchAllCourses();
      result.fold((l) => emit(AllCoursesFailure(errorMessage: l.errorMessage)), (r) => emit(AllCoursesSuccess(coursesList: r)));
    } on Exception catch (e) {
      emit(AllCoursesFailure(errorMessage: e.toString()));
    }
  }
}
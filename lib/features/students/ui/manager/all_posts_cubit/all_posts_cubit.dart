import 'package:bloc/bloc.dart';
import 'package:grad_project/features/students/data/repos/all_posts_repo/all_posts_repo.dart';
import 'package:grad_project/features/students/ui/manager/all_posts_cubit/all_posts_state.dart';


class AllPostsCubit extends Cubit<AllPostsState> {
  AllPostsCubit(this.allPostsRepo) : super(AllPostsInitial());
  final AllPostsRepo allPostsRepo;
  Future<void> fetchAllPosts() async {
    emit(AllPostsLoading());
    try {
      final result = await allPostsRepo.fetchAllPosts();
      result.fold((l) => emit(AllPostsFailure(errorMessage: l.errorMessage)), (r) => emit(AllPostsSuccess(allPosts: r)));
    } on Exception catch (e) {
      emit(AllPostsFailure(errorMessage: e.toString()));
    }
  }
}
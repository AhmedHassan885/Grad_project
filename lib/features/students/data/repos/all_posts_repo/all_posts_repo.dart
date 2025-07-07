import 'package:dartz/dartz.dart';
import 'package:grad_project/core/errors/failure.dart';
import 'package:grad_project/features/students/data/model/all_posts_model/AllPostsModel.dart';

abstract class AllPostsRepo {
  Future<Either<Failure, List<AllPostModel>>> fetchAllPosts();


}
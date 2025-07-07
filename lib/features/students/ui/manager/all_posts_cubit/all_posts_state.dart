
import 'package:flutter/foundation.dart';
import 'package:grad_project/features/students/data/model/all_posts_model/AllPostsModel.dart';

@immutable
sealed class AllPostsState {}

final class AllPostsInitial extends AllPostsState {}
final class AllPostsLoading extends AllPostsState {}
final class AllPostsSuccess extends AllPostsState {
  final List<AllPostModel> allPosts;

  AllPostsSuccess({required this.allPosts});
}
final class AllPostsFailure extends AllPostsState {
  final String errorMessage;

  AllPostsFailure({required this.errorMessage});
}
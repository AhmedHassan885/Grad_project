// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/core/services/service_locator.dart';
import 'package:grad_project/features/students/data/repos/all_posts_repo/all_posts_repo_imp.dart';
import 'package:grad_project/features/students/ui/manager/all_posts_cubit/all_posts_cubit.dart';
import 'package:grad_project/features/students/ui/manager/all_posts_cubit/all_posts_state.dart';
import 'package:grad_project/features/students/ui/widgets/custom%20_card%20_posts%20_screen.dart';
import 'package:grad_project/features/students/ui/widgets/custom%20text%20_one%20_and%20_text%20_two.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AllPostsCubit>(
      create: (context) =>
          AllPostsCubit(getIt.get<AllPostsRepoImp>())..fetchAllPosts(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 60),
              width: double.infinity,
              color: const Color(0xFF002B5B),
              child: const CustomTextOneAndTextTwo(),
            ),

            // Posts List
            Expanded(
              child: BlocBuilder<AllPostsCubit, AllPostsState>(
                builder: (context, state) {
                  if (state is AllPostsLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is AllPostsFailure) {
                    return Center(child: Text("Error: ${state.errorMessage}"));
                  } else if (state is AllPostsSuccess) {
                    final posts = state.allPosts;

                    return ListView.separated(
                      padding: const EdgeInsets.all(16),
                      itemCount: posts.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        final post = posts[index];
                        return CustomCardPostItem(postModel: post);
                      },
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

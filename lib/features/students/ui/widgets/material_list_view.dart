import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/features/students/ui/lectures_screen.dart';
import 'package:grad_project/features/students/ui/manager/all_courses_cubit/all_courses_cubit.dart';
import 'package:grad_project/features/students/ui/manager/all_courses_cubit/all_courses_state.dart';
import 'package:grad_project/features/students/ui/widgets/subject_term.dart';


class MaterialListView extends StatelessWidget {
  const MaterialListView({super.key});

  @override
  Widget build(BuildContext context) {
    // ❌ BlocBuilder is commented out temporarily


    return BlocBuilder<AllCoursesCubit, AllCoursesState>(
      builder: (context, state) {
        if (state is AllCoursesSuccess) {
          return ListView.builder(
            itemCount:state.coursesList.length,
            itemBuilder: (context, index) {
              final material = state.coursesList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SubjectItem(
                  title: material.title ?? ' un known',
                    onPressed: () {
                      navigateTo(
                        context,
                        screen: Lectures(title: material.title ?? 'Unknown'),
                      );

                  },
                ),
              );
            },
          );
        } else if (state is AllCoursesFailure) {
          return Center(child: Text("❌ Error: ${state.errorMessage}"));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );


    // ✅ Temporary static list for testing

  }
}
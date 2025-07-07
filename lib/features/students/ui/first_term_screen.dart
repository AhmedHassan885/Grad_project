
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/core/services/service_locator.dart';
import 'package:grad_project/features/students/data/repos/all_courses_repo/all_courses_repo_imp.dart';
import 'package:grad_project/features/students/ui/manager/all_courses_cubit/all_courses_cubit.dart';
import 'package:grad_project/features/students/ui/widgets/material_list_view.dart';

class FirstTerm extends StatelessWidget {
   const FirstTerm({super.key});


  @override
  Widget build(BuildContext context) {
   return  BlocProvider<AllCoursesCubit>(
      create: (context) =>
      AllCoursesCubit(getIt.get<AllCoursesRepoImp>())..fetchAllCourses(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
           Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  color: const Color(0xff022D4F),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                ),
              ],
           ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(height: 100),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' Level 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      ' .  first term',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 100),
                Center(
                  child: SizedBox(
                    height: 300,
                    child: MaterialListView(),
                  ),
                ),
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}

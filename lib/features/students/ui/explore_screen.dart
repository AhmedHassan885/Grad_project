// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/services/service_locator.dart';
import 'package:grad_project/core/widgets/inputs/default_container.dart';
import 'package:grad_project/features/students/data/repos/all_doctor_repo/all_doctor_repo_imp.dart';
import 'package:grad_project/features/students/ui/manager/all_doctors_cubit/all_doctors_cubit.dart';
import 'package:grad_project/features/students/ui/term_screen.dart';
import 'package:grad_project/features/students/ui/widgets/docotors_list.dart';

class Explore extends StatefulWidget {
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AllDoctorsCubit>(
          create: (context) => AllDoctorsCubit(getIt.get<AllDoctorsRepoImp>())
            ..fetchAllDoctors(),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Color(0xff022D4F),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Doctors For Level 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 100,
                  child: DoctorsList(),
                ),
                SizedBox(height: 25),
                Center(
                  child: Column(
                    children: [
                      const Text(
                        'Choose your educational group',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 40),
                      DefaultContainer(
                          onpressed: () {
                            navigateTo(context, screen: Term());
                          },
                          width: 350,
                          height: 45,
                          title: "Level 1")
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
        // bottomNavigationBar: BottomAppBar(
        //   shape: CircularNotchedRectangle(),
        //   notchMargin: 6.0,
        //   child: Container(
        //     height: 60,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: <Widget>[
        //         IconButton(
        //             icon: Icon(Icons.home, color: Colors.grey), onPressed: () {}),
        //         SizedBox(width: 40),
        //         IconButton(
        //             icon: Icon(Icons.person, color: Colors.grey),
        //             onPressed: () {}),
        //       ],
        //     ),
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Color(0xFF002B5B),
        //   child: Icon(Icons.search),
        //   onPressed: () {},
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

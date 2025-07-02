// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grad_project/features/doctors/ui/AddLectureScreen.dart';
import 'package:grad_project/features/doctors/ui/AddPostScreen.dart';
import 'package:grad_project/features/doctors/ui/AddTaskScreen.dart';
import 'package:grad_project/features/doctors/ui/UploadsScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_build_Material_Button.dart';



class CustomPositionedFourItemsHomeDemonstrator extends StatelessWidget {
  const CustomPositionedFourItemsHomeDemonstrator({super.key});
  void navigateTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200,
      left: 0,
      right: 0,
      child: Column(
        children: [
          CustombuildMaterialButton("Add lecture",
                  () => navigateTo(context, AddLectureScreen(userName: "abdo"))),
          CustombuildMaterialButton(
              "Add Post", () => navigateTo(context, AddPostScreen(userName: "abdo"))),
          CustombuildMaterialButton(
             "Add Task", () => navigateTo(context, AddTaskScreen(userName: "abdo",))),
          CustombuildMaterialButton(
              "Uploads", () => navigateTo(context, UploadsScreen(userName: "abdo",))),
        ],
      ),
    );
  }
}

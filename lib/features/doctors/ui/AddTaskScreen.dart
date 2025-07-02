// ignore_for_file: use_super_parameters, file_names

import 'package:flutter/material.dart';
import 'package:grad_project/features/doctors/ui/widgets/Custom_UploadContainer.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_Dataline.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_ElevatedButton_AddLectureScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_TextField_PostDescription_AddPostScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_TopBar_Welome_AddLectureScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_name_Add%20a%20lecture_AddLectureScreen.dart';

class AddTaskScreen extends StatefulWidget {
  final String userName;

  const AddTaskScreen({Key? key, required this.userName}) : super(key: key); // ✅ إضافته هنا

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                CustomTopbarWelomeAddlecturescreen(text1: '👋 ${widget.userName}'),
                const SizedBox(height: 24),
                CustomName(
                  text: "Add Task",
                ),
                const SizedBox(height: 24),
                CustomTextfieldPostdescriptionAddpostscreen(
                  text:"task description",
                ),
                const SizedBox(height: 16),
                UploadContainer(text: "image or video for details",),
                const SizedBox(height: 16),
                CustomDataline(),
                const SizedBox(height: 100),

                CustomElevatedbuttonAddlecturescreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

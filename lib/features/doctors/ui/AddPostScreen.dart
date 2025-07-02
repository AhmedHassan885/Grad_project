// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grad_project/features/doctors/ui/widgets/Custom_UploadContainer.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_ElevatedButton_AddLectureScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_TextField_PostDescription_AddPostScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_TopBar_Welome_AddLectureScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_name_Add%20a%20lecture_AddLectureScreen.dart';

class AddPostScreen extends StatefulWidget {
  final String userName;

  const AddPostScreen({super.key, required this.userName});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                CustomTopbarWelomeAddlecturescreen(text1: '👋 ${widget.userName}'),
                const SizedBox(height: 24),
                CustomName(text:"Add Post"),
                const SizedBox(height: 25),
                CustomTextfieldPostdescriptionAddpostscreen(text: "post description"),
                const SizedBox(height:24),
                UploadContainer(text:"video or image"),
                const SizedBox(height:20),
                UploadContainer(text: "file"),
                const SizedBox(height: 32),
                const SizedBox(height:24),
                CustomElevatedbuttonAddlecturescreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

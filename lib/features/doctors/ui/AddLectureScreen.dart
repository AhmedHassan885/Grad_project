// ignore_for_file: use_super_parameters, library_private_types_in_public_api, unused_import, file_names

import 'package:flutter/material.dart';
import 'package:grad_project/core/widgets/inputs/formfield.dart';
import 'package:grad_project/features/doctors/ui/widgets/CustomDropdown.dart';
import 'package:grad_project/features/doctors/ui/widgets/CustomTextField.dart';
import 'package:grad_project/features/doctors/ui/widgets/Custom_UploadContainer.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_ElevatedButton_AddLectureScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_TopBar_Welome_AddLectureScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_name_Add%20a%20lecture_AddLectureScreen.dart';


class AddLectureScreen extends StatefulWidget {
  final String userName;

  const AddLectureScreen({Key? key, required this.userName}) : super(key: key);

  @override
  _AddLectureScreenState createState() => _AddLectureScreenState();
}

class _AddLectureScreenState extends State<AddLectureScreen> {
  String? selectedLevel;
  String? selectedTerm;

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
                const SizedBox(height:24),
                CustomName(text: "Add lecture"),
                const SizedBox(height:24),
                CustomTextField2(hintText: "Lecture name",),
                CustomTextField2(hintText:"Lecture description"),
                CustomDropdown(
                  hintText: "Level",
                  options: [
                    '  Level  1',
                    '  Level  2',
                    '  Level  3',
                    '  Level  4'
                  ],
                  value: selectedLevel,
                  onChanged: (value) {
                    setState(() {
                      selectedLevel = value;
                    });
                  },
                ),
                CustomDropdown(
                  hintText: 'Term',
                  options: ['  Semester  1', '  Semester  2'],
                  value: selectedTerm,
                  onChanged: (value) {
                    setState(() {
                      selectedTerm = value;
                    });
                  },
                ),
                const SizedBox(height:24),
                UploadContainer(text: "video or image"),
                const SizedBox(height: 20),
                UploadContainer(text:"file"),
                const SizedBox(height:32),
                const SizedBox(height: 24),
                CustomElevatedbuttonAddlecturescreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

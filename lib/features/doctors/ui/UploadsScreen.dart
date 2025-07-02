// ignore_for_file: use_super_parameters, unnecessary_brace_in_string_interps, file_names

import 'package:flutter/material.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_1_8Pages%20_UploadScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_Row_number%20One%20in%20table_uploadsScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_TopBar_Welome_AddLectureScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_name_Add%20a%20lecture_AddLectureScreen.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_namesTables_in_uploadScreen.dart';


class UploadsScreen extends StatelessWidget {
  final String userName;

  const UploadsScreen({Key? key, required this.userName}) : super(key: key); // ✅ إضافته هنا

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                CustomTopbarWelomeAddlecturescreen(text1: '👋 ${userName}'),
                const SizedBox(height: 35),
                CustomName(text:"Uploads"),
                const SizedBox(height: 40),
                CustomNamestablesInUploadscreen(),
                Divider(color: Colors.grey.shade300),
                Custom_Row_number_One_in_table_uploadsScreen(),
                Spacer(),
                Custom_1_8_Pages(),
                Text("1 of 8 pages (84 items)", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';


class CustomElevatedbuttonAddlecturescreen extends StatelessWidget {
  const CustomElevatedbuttonAddlecturescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF022B54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          "إضافة",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}

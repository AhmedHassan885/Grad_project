// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';

class CustomTextSigninandup extends StatelessWidget {
  const CustomTextSigninandup({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      """Login Into Zagazig
University, Faculty of 
 Computers and 
  Information.""",
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 33.86,
          color: AppColor.dark_blue),
    );
  }
}

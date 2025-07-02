// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double widthFactor = 271 / 390;
    double heightFactor = 340 / 844;

    return SizedBox(
      width: screenWidth * widthFactor,
      height: screenHeight * heightFactor,
      child: Image.asset(AppAssets.logo2, fit: BoxFit.cover),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';


class CustomIcondoctorAndNamedoctorHomescreen extends StatelessWidget {
  const CustomIcondoctorAndNamedoctorHomescreen({super.key,  required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF022B54),
      height: 220,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height:60),
           CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage(AppAssets.profile_image),
                  ),
          const SizedBox(height:10),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/features/auth/ui/register_screen.dart';

class RegisterAsScreen extends StatefulWidget {
  @override
  _RegisterAsScreenState createState() => _RegisterAsScreenState();
}

class _RegisterAsScreenState extends State<RegisterAsScreen> {
  String selectedRole = "Student";

  void selectRole(String role) {
    setState(() {
      selectedRole = role;
    });

    navigateTo(context, screen: RegisterScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 139),
          Center(
            child: Text("Register As",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 33,
                    color: AppColor.dark_blue)),
          ),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                roleImageCard("Student", AppAssets.student),
                SizedBox(width: 35),
                roleImageCard("Doctor", AppAssets.Doctorr),
              ],
            ),
          ),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                roleImageCard("Demonstrator", AppAssets.Doc_Demo),
                SizedBox(width: 35,),
                roleImageCard("Management", AppAssets.management)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget roleImageCard(String role, String imagePath) {
    bool isSelected = selectedRole == role;

    return GestureDetector(
      onTap: () => selectRole(role),
      child: Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
          color: Color(0XffF7F7F7),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? Color(0xff28D2E4) : Colors.white,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 80, height: 90, fit: BoxFit.contain),
            SizedBox(height: 10),
            Text(role,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.dark_blue)),
          ],
        ),
      ),
    );
  }
}

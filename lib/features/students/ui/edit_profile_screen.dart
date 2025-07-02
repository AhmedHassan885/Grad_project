// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';
import 'package:grad_project/core/widgets/inputs/formfield.dart';
import '../../../core/resource_manager/app_color.dart';
import '../../../core/widgets/inputs/dropdownfield.dart';

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final List<String> years = ["1", "2", "3", "4"];

  String? _selectedyear;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Color(0xff022D4F),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage(AppAssets.profile_image),
                  ),
                  Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    CustomTextField(
                        controller: TextEditingController(), labelText: "name"),
                    CustomTextField(
                        controller: TextEditingController(),
                        labelText: "email"),
                    CustomTextField(
                        controller: TextEditingController(),
                        labelText: "phone"),
                    CustomTextField(
                      controller: TextEditingController(),
                      labelText: "password",
                      isPassword: true,
                    ),
                    CustomTextField(
                      controller: TextEditingController(),
                      labelText: "confirm password",
                      isPassword: true,
                    ),
                    CustomDropdownField(
                      label: "year",
                      items: years,
                      selectedValue: _selectedyear,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedyear = newValue;
                        });
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                         
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor: AppColor.dark_blue,
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 165),
                        ),
                        child: Text("Edit",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}

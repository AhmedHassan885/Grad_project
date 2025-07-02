// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/features/students/ui/lec_content_screen.dart';
import 'package:grad_project/features/students/ui/widgets/lect.dart';

class Lectures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Physics Lectures",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 265,
                    child: lect(ontap: () {
                      navigateTo(context, screen: LecContent());
                    }))
              ],
            ),
          )
        ],
      ),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grad_project/features/students/ui/widgets/custom%20text%20_one%20_and%20_text%20_two.dart';

class DemoPostsScreen extends StatelessWidget {
  const DemoPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(children: [
              Stack(
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 60, bottom: 0),
                      width: double.infinity,
                      color: Color(0xFF002B5B),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextOneAndTextTwo(),
                          // CustomCardPostsScreen(),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 20),
              // CustomCardPostsScreen(),
            ]),
          ],
        ));
  }
}

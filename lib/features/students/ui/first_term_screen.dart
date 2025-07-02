// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/widgets/inputs/default_container.dart';
import 'package:grad_project/features/students/ui/lectures_screen.dart';

class FirstTerm extends StatelessWidget {
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
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' Level 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  ' .  first term',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 100),
                  DefaultContainer(
                      width: 300,
                      height: 60,
                      title: "Physics",
                      onpressed: () {
                        navigateTo(context, screen: Lectures());
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultContainer(
                      width: 300,
                      height: 60,
                      title: "Machine Learning",
                      onpressed: () {}),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultContainer(
                      width: 300,
                      height: 60,
                      title: "intoduction in cs",
                      onpressed: () {}),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultContainer(
                      width: 300,
                      height: 60,
                      title: "operating system",
                      onpressed: () {}),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:grad_project/core/widgets/inputs/default_container.dart';

class DemoLevelQuizes extends StatefulWidget {
  @override
  State<DemoLevelQuizes> createState() => _DemoLevelQuizesState();
}

class _DemoLevelQuizesState extends State<DemoLevelQuizes> {
  int currentIndex = 2;
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
                  Text(
                    "levels",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  DefaultContainer(
                      width: 350,
                      height: 65,
                      title: "level 1",
                      onpressed: () {
                        
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultContainer(
                      width: 350,
                      height: 65,
                      title: "level 2",
                      onpressed: () {}),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultContainer(
                      width: 350,
                      height: 65,
                      title: "level 3",
                      onpressed: () {}),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultContainer(
                      width: 350,
                      height: 65,
                      title: "level 4",
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

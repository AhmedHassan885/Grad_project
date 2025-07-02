// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/widgets/inputs/default_container.dart';
import 'package:grad_project/features/students/ui/first_term_screen.dart';

class Term extends StatefulWidget {
  @override
  State<Term> createState() => _TermState();
}

class _TermState extends State<Term> {
  int currentIndex = 1;
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
            Center(
              child: Text(
                ' Level 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Text(
                    "Choose Your Term",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultContainer(
                          onpressed: () {
                            navigateTo(context, screen: FirstTerm());
                          },
                          width: 150,
                          height: 45,
                          title: "First"),
                      SizedBox(
                        width: 10,
                      ),
                      DefaultContainer(
                          width: 150,
                          height: 50,
                          title: "Second",
                          onpressed: () {})
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}

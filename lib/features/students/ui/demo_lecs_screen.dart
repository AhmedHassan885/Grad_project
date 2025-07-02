// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/features/students/ui/demo_lecs_content_screen.dart';

class DemoLecs extends StatelessWidget {
  final List<String> lecturesName = [
    'Introduction to Programming',
    'Cyber Security Basics',
    'Lec3',
  ];
  final List<String> LectureImages = [
    "assets/images/vid.png",
    "assets/images/vid.png",
    "assets/images/vid.png",
  ];

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
                  "sections De abdo",
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
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: lecturesName.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () =>
                            navigateTo(context, screen: DemoLecsContent()),
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4,
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(
                                    LectureImages[index],
                                    fit: BoxFit.cover,
                                  )),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                lecturesName[index],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff051926)),
                              ),
                              Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff61646B)),
                              ),
                              Text(
                                "10/10/2024 3:15",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Dr/Ahmed",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

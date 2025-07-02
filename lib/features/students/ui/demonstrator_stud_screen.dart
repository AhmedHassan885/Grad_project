// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/features/students/ui/demo_old_mater_screen.dart';

class DemonstartorStudents extends StatelessWidget {
  final List<String> doctorNames = [
    'doc1',
    'doc2',
    'doc3',
    'doc4',
    'doc5',
    'doc6'
  ];
  final List<String> doctorImages = [
    "assets/images/doctor.png",
    "assets/images/doctor.png",
    "assets/images/doctor.png",
    "assets/images/doctor.png",
    "assets/images/doctor.png",
    "assets/images/doctor.png",
  ];

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
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 110,
              ),
              Text(
                'Demonstrator For Level 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: doctorNames.length,
                  separatorBuilder: (context, index) => SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            navigateTo(context, screen: DemoOldMater());
                          },
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(doctorImages[index]),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          doctorNames[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ]),
      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   notchMargin: 6.0,
      //   child: Container(
      //     height: 60,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: <Widget>[
      //         IconButton(
      //             icon: Icon(Icons.home, color: Colors.grey), onPressed: () {}),
      //         SizedBox(width: 40),
      //         IconButton(
      //             icon: Icon(Icons.person, color: Colors.grey),
      //             onPressed: () {}),
      //       ],
      //     ),
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Color(0xFF002B5B),
      //   child: Icon(Icons.search),
      //   onPressed: () {},
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

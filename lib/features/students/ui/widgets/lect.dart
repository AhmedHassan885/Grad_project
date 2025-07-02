// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class lect extends StatelessWidget {
  lect({super.key, required this.ontap});
  final Callback ontap;
  final List<String> lecturesName = [
    'Lec1',
    'Lec2',
    'Lec3',
  ];
  final List<String> LectureImages = [
    "assets/images/vid.png",
    "assets/images/vid.png",
    "assets/images/vid.png",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) {
        return SizedBox(
          width: 10,
        );
      },
      itemCount: lecturesName.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: ontap,
          child: Container(
            width: 300,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

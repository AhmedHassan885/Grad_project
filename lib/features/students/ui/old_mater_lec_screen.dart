// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';

class OldLecs extends StatelessWidget {
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 33,
                  height: 33,
                  decoration: BoxDecoration(
                      color: Color(0xffDEDEDE),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColor.dark_blue,
                      )),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Old Materials Physics\n                Lectures',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  OldMaterialsContainers(
                    filename: "filename.txt",
                    icon: Icons.file_copy,
                  ),
                  OldMaterialsContainers(
                    filename: "filename.txt",
                    icon: Icons.play_arrow,
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}

class OldMaterialsContainers extends StatelessWidget {
  const OldMaterialsContainers({
    super.key,
    required this.filename,
    required this.icon,
  });
  final String filename;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 130,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 5, top: 16),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Color(0xffE2E8F0), blurRadius: 3)],
        color: const Color(0xFFF4F9FA),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Icon(icon, size: 50, color: Colors.grey),
          Spacer(),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                filename,
                style: const TextStyle(fontSize: 16),
              ),
              const Icon(Icons.more_horiz, color: Colors.grey),
            ],
          )
        ],
      ),
    );
  }
}

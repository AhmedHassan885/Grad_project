// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';

class Tasks extends StatelessWidget {
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
                  width: 40,
                ),
                Text(
                  'tasks dr.sayed',
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
                  Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 25, right: 20),
                    width: 330,
                    height: 390,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 4)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "upload solve 10 *10 / 20",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          width: 280,
                          height: 140,
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 5, top: 16),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Color(0xffE2E8F0), blurRadius: 3)
                            ],
                            color: const Color(0xFFF4F9FA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Icon(Icons.play_circle,
                                  size: 50, color: Colors.grey),
                              Spacer(),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "video_player_installer_setup.rar",
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  const Icon(Icons.more_horiz,
                                      color: Colors.grey),
                                ],
                              )
                            ],
                          ),
                        ),
                        Text(
                          "Upload date : 16/2/2025",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Deadline : 16/2/2025",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Container(
                            width: 230,
                            height: 70,
                            color: Color(0xffF9F9F9),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.upload,
                                      color: AppColor.dark_blue,
                                    )),
                                Text("upload solve",
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.grey))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                backgroundColor: AppColor.dark_blue,
                                padding: EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Upload ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16)),
                                  Icon(
                                    Icons.upload,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

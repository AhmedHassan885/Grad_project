import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:readmore/readmore.dart';

class DemoLecsContent extends StatelessWidget {
  const DemoLecsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            // Placeholder for video
            Container(
                height: 230,
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Image.asset(
                      AppAssets.lec_vid,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.replay_10,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.forward_10,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(height: 5),
            // Title
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Introduction to programming',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Doctor info
                  Row(
                    children: [
                      // Doctor image placeholder
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[300],
                        child: Image.asset(AppAssets.lec_doc),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('DR.'),
                          Text(
                            'Ahmed',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  const SizedBox(height: 8),
                  ReadMoreText(
                      style: TextStyle(color: Colors.grey),
                      colorClickableText: AppColor.dark_blue,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Read More ...",
                      trimLines: 5,
                      "Lorem ipsum dolor sit amet consectetur. Quisque  \ndrasut  frtyhyhp hdhyunbh pellentesque nec quisque \namet proin elit amet. Lorem ipsum dolor sit ametasde consectetur. Quisque  drasut  frtyhyhp hdhyunbhsds \npellentesque nec quisque amet \nproin elit ame rtbavnah nhuth btydgb a.aaaaaaaaaaddddddddd"),

                  // PDF file container
                  Container(
                    margin: EdgeInsets.only(
                        left: 18, right: 30, top: 20, bottom: 20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                    ),
                    child: Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xffF0FDF4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: SvgPicture.asset(AppAssets.pdf)),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('pdf',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff475569))),
                            Text('44 GB',
                                style: TextStyle(
                                    color: Color(0xff475569),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

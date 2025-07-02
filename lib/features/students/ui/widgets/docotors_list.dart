import 'package:flutter/material.dart';

class DocotorsList extends StatelessWidget {
  DocotorsList({super.key});
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
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: doctorNames.length,
      separatorBuilder: (context, index) => SizedBox(width: 12),
      itemBuilder: (context, index) {
        return Column(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(doctorImages[index]),
            ),
            SizedBox(height: 8),
            Text(
              doctorNames[index],
              style: TextStyle(color: Colors.white),
            ),
          ],
        );
      },
    );
  }
}

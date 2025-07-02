// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextOneAndTextTwo extends StatelessWidget {
  const CustomTextOneAndTextTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome, abdo 👋",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            "Upgrade your skill for better futures!",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF97A9BD)),
          ),
        ],
      ),
    );
  }
}

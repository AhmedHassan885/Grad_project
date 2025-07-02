// ignore_for_file: file_names

import 'package:flutter/material.dart';

class UploadContainer extends StatelessWidget {
  final String text;

  const UploadContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_upload_outlined,
                color: Color(0xFF022B54), size: 30),
            const SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }
}
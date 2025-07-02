// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomNamestablesInUploadscreen extends StatelessWidget {
  const CustomNamestablesInUploadscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Student name',
              style: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w500, color: Colors.black)),
          Text('Upload date',
              style: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w500, color: Colors.black)),
          Text('Task name',
              style: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w500, color: Colors.black)),
          Text('content upload',
              style: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w500, color: Colors.black)),
        ],
      ),
    );
  }
}

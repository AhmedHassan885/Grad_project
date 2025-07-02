// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';


class Custom_1_8_Pages extends StatelessWidget {
  const Custom_1_8_Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.symmetric(vertical:16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.first_page, color: Colors.grey),
            SizedBox(width:8),
            Icon(Icons.chevron_left, color: Colors.grey),
            SizedBox(width: 8),
            for (int i = 1; i <= 8; i++)
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal:4),
                padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12),
                decoration: BoxDecoration(
                  color: i == 1 ? Color(0xFF1A1A27) : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Text(
                  '$i',
                  style: TextStyle(
                    color: i == 1 ? Colors.white : Colors.black,
                  ),
                ),
              ),
            SizedBox(width: 8),
            Icon(Icons.chevron_right, color: Colors.grey),
            SizedBox(width:8),
            Icon(Icons.last_page, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

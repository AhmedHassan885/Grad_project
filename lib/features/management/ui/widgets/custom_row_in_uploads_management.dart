// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Custom_Row_number_One_in_table_uploadsScreen_Management extends StatelessWidget {
  const Custom_Row_number_One_in_table_uploadsScreen_Management({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('mohammed',
              style: TextStyle(
                  color: Color(0xFFB1B0B0),
                  fontWeight: FontWeight.w400,
                  fontSize: 16)),
          Text('10/10/2025 10:15',
              style: TextStyle(
                  color: Color(0xFFB1B0B0),
                  fontWeight: FontWeight.w400,
                  fontSize: 16)),
          Text('solve 5*6 /20',
              style: TextStyle(
                  color: Color(0xFFB1B0B0),
                  fontWeight: FontWeight.w400,
                  fontSize: 16)),
          IconButton(
            onPressed: () {
              // Handle view or download
            },
            icon:
            Icon(Icons.insert_drive_file_rounded, color: Color(0xFF94A3B8)),
          ),
        ],
      ),
    );
  }
}


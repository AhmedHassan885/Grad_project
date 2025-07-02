// ignore_for_file: file_names

import 'package:flutter/material.dart';


class CustomName extends StatelessWidget {
  const CustomName({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(text,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: Color(0xFF292D32),
        ),
      ),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';


class CustomTextfieldPostdescriptionAddpostscreen extends StatelessWidget {
  const CustomTextfieldPostdescriptionAddpostscreen({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:150,
      padding: const EdgeInsets.symmetric(
          horizontal:16),
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade600),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
        ),
        maxLines: null,
      ),
    );
  }
}

// ignore_for_file: non_constant_identifier_names, unnecessary_import, file_names

import 'dart:ui';
import 'package:flutter/material.dart';

Widget CustombuildMaterialButton(String text, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
    child: MaterialButton(
      onPressed: onPressed,
      color: Color(0xFFF9F9F9),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 45,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}
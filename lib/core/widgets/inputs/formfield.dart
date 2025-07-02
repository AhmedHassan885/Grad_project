// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          fillColor: Color(0xffF4F4F4),
          filled: true,
          hintText: labelText,
          hintStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xff858383)),
          border: OutlineInputBorder(),
          suffixIcon: isPassword ? Icon(Icons.visibility_off) : null,
        ),
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return "Please enter $labelText";
        //   }
        //   return null;
        // },
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import '../../resource_manager/app_color.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.btn_name,
      required this.v_padding,
      required this.h_padding,
       required this.onPressed});
  final String btn_name;
  final double v_padding;
  final double h_padding;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        backgroundColor: AppColor.dark_blue,
        padding:
            EdgeInsets.symmetric(vertical: v_padding, horizontal: h_padding),
      ),
      child:
          Text(btn_name, style: TextStyle(color: Colors.white, fontSize: 16)),
    );
  }
}

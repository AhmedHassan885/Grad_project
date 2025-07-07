// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  final Function(String?)? onSaved;

   const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.onSaved,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        onSaved:widget.onSaved,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText:widget.isPassword?obscureText:false,
        decoration: InputDecoration(
          focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          fillColor: Color(0xffF4F4F4),
          filled: true,
          hintText: widget.labelText,
          hintStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xff858383)),
          border: OutlineInputBorder(),
          suffixIcon: widget.isPassword ? IconButton(
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            icon: Icon(
              obscureText ? Icons.visibility_outlined : Icons
                  .visibility_off_outlined,
            ),
          ) : null,
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
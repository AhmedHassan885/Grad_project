// ignore_for_file: file_names, use_key_in_widget_constructors, deprecated_member_use, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemOrders extends StatelessWidget {
  final String title;

  const ItemOrders({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 6,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
      ),
    );
  }
}



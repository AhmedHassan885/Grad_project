// ignore_for_file: file_names, unused_field

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDataline extends StatefulWidget {
  const CustomDataline({super.key});

  @override
  State<CustomDataline> createState() => _CustomDatalineState();
}

class _CustomDatalineState extends State<CustomDataline> {
  final TextEditingController _taskDescController = TextEditingController();
  DateTime? _selectedDate;

  Future<void> _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickDate,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _selectedDate != null
                  ? DateFormat('yyyy-MM-dd').format(_selectedDate!)
                  : 'Deadline',
              style: TextStyle(color: Colors.black87),
            ),
            Icon(Icons.calendar_today,
                size: 20, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

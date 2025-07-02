import 'package:flutter/material.dart';

class CustomNamestablesInUploadscreenManagement extends StatelessWidget {
  const CustomNamestablesInUploadscreenManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(' DOC OR DE',
              style: TextStyle(fontSize:12,
                  fontWeight: FontWeight.w500, color: Colors.black)),
          Text('order date',
              style: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w500, color: Colors.black)),
          Text('status',
              style: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w500, color: Colors.black)),
          Text('action',
              style: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w500, color: Colors.black)),
        ],
      ),
    );
  }
}

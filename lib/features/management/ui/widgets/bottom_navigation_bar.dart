// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class BottomNavigationBarManagement extends StatelessWidget {
  const BottomNavigationBarManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 10,
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, color: Colors.grey),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF1E1E6C),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person, color: Colors.white, size: 32),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined, color: Colors.grey),
          label: 'Explore',
        ),
      ],
    );
  }
}

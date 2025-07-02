// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomBottomnavigationbarHomedoctor extends StatefulWidget {
  const CustomBottomnavigationbarHomedoctor({super.key});

  @override
  State<CustomBottomnavigationbarHomedoctor> createState() =>
      _CustomBottomnavigationbarHomedoctorState();
}

class _CustomBottomnavigationbarHomedoctorState
    extends State<CustomBottomnavigationbarHomedoctor> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      selectedItemColor: Colors.blue.shade900,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedLabelStyle: TextStyle(fontSize: 12),
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label:"Home",
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFF022B54),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person, color: Colors.white),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined),
          label: "Explore",
        ),
      ],
    );
  }
}

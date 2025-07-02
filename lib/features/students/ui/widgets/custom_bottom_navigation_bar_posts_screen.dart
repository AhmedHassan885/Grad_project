// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';

class CustomBottomNavigationBarPostsScreen extends StatelessWidget {
  const CustomBottomNavigationBarPostsScreen({Key? key}) : super(key: key);

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
            width: 56,
            height: 56,
            margin: EdgeInsets.only(bottom: 17),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF1E1E6C),
              shape: BoxShape.circle,
            ),
            child: Image(image: AssetImage(AppAssets.logo)),
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

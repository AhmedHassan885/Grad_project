// ignore_for_file: unnecessary_string_escapes, deprecated_member_use, file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/features/students/ui/explore_screen.dart';
import 'package:grad_project/features/students/ui/posts%20screen.dart';
import 'package:grad_project/features/students/ui/profile_screen.dart';

class BottonNavBtn extends StatefulWidget {
  const BottonNavBtn({super.key});

  @override
  State<BottonNavBtn> createState() => _BottonNavBtnState();
}

class _BottonNavBtnState extends State<BottonNavBtn> {
  int navBarCurrentIndex = 0;
  List<Widget> screens = [PostsScreen(), Explore(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            navBarCurrentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.home,
                color:
                    navBarCurrentIndex == 0 ? AppColor.dark_blue : Colors.grey,
              ),
              label: "ُHome"),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.heart,
              color: navBarCurrentIndex == 1 ? AppColor.dark_blue : Colors.grey,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.user,
              color: navBarCurrentIndex == 2 ? AppColor.dark_blue : Colors.grey,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: screens[navBarCurrentIndex],
    );
  }
}

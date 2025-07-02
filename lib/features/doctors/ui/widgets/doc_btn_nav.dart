// ignore_for_file: unnecessary_string_escapes, deprecated_member_use, file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/features/doctors/ui/doctor_posts_screen.dart';
import 'package:grad_project/features/doctors/ui/home_Doctor.dart';

class DocBottonNavBtn extends StatefulWidget {
  const DocBottonNavBtn({super.key});

  @override
  State<DocBottonNavBtn> createState() => _DocBottonNavBtnState();
}

class _DocBottonNavBtnState extends State<DocBottonNavBtn> {
  int navBarCurrentIndex = 0;
  List<Widget> screens = [ DoctorsPostsScreen() ,DoctorScreen(),];

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
          // BottomNavigationBarItem(
          //     icon: SvgPicture.asset(
          //       AppAssets.home,
          //       color:
          //           navBarCurrentIndex == 0 ? AppColor.dark_blue : Colors.grey,
          //     ),
          //     label: "ُExplore"),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.home,
              color: navBarCurrentIndex == 0 ? AppColor.dark_blue : Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.user,
              color: navBarCurrentIndex == 1? AppColor.dark_blue : Colors.grey,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: screens[navBarCurrentIndex],
    );
  }
}

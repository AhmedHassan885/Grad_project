// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';
import 'package:grad_project/features/management/ui/widgets/add_content.dart';
import 'package:grad_project/features/management/ui/widgets/orders.dart';


class HomeManagement extends StatelessWidget {
  const HomeManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 60, bottom: 100),
                width: double.infinity,
                color: Color(0xFF002B5B),
                child: Column(
                  children: [
                    CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage(AppAssets.profile_image),
                  ),
                    SizedBox(height: 10),
                    Text(
                      'Management',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              AddContent(),
            ],
          ),
          SizedBox(height: 60),
          Orders(),
        ],
      ),
    );
  }
}



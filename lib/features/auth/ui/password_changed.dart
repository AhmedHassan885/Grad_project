import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/core/widgets/inputs/button.dart';
import 'package:grad_project/features/auth/ui/signin_screen.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Image.asset(AppAssets.approval2),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Password Changed",
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: AppColor.dark_blue),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          SizedBox(
            height: 35,
          ),
          Center(
            child: CustomButton(
                btn_name: "BACK TO SIGN IN",
                v_padding: 10,
                h_padding: 105,
                onPressed: () {
                  navigateTo(context, screen: SignINScreen());
                }),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/core/widgets/inputs/button.dart';
import 'package:grad_project/features/auth/ui/signin_screen.dart';
import 'package:grad_project/features/onboarding/register_as.dart';

class CustomElevatedbuttonSigninRegister extends StatelessWidget {
  const CustomElevatedbuttonSigninRegister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          btn_name: "SIGN IN",
          v_padding: 7,
          h_padding: 40,
          onPressed: () {
            navigateTo(context, screen: SignINScreen());
          },
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: () {
            navigateTo(context, screen: RegisterAsScreen());
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: AppColor.dark_blue, width: 1)),
            backgroundColor: AppColor.white,
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 38),
          ),
          child: Text("REGISTER",
              style: TextStyle(color: AppColor.dark_blue, fontSize: 16)),
        ),
      ],
    );
  }
}

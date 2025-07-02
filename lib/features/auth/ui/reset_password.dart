import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/core/widgets/inputs/arrow_back_container.dart';
import 'package:grad_project/core/widgets/inputs/button.dart';
import 'package:grad_project/core/widgets/inputs/formfield.dart';
import 'package:grad_project/features/auth/ui/code.dart';
import 'package:grad_project/features/auth/ui/signin_screen.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70, left: 40),
            child: Align(
                alignment: Alignment.topLeft,
                child: ArrowBackContainer(
                    color: Color.fromARGB(255, 240, 239, 239))),
          ),
          SizedBox(
            height: 120,
          ),
          Center(
            child: Text(
              "Reset Password",
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: AppColor.dark_blue),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 5),
            child: CustomTextField(
                controller: TextEditingController(),
                labelText: "Enter Your Email Address"),
          ),
          SizedBox(
            height: 35,
          ),
          Center(
              child: CustomButton(
                  btn_name: "SEND CODE",
                  v_padding: 10,
                  h_padding: 140,
                  onPressed: () {
                    navigateTo(context, screen: Code());
                  })),
          SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                navigateTo(context, screen: SignINScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember Password ?  ",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff858383),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Sign in Here ",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff051926),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

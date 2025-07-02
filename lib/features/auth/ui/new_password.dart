import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/core/widgets/inputs/arrow_back_container.dart';
import 'package:grad_project/core/widgets/inputs/button.dart';
import 'package:grad_project/core/widgets/inputs/formfield.dart';
import 'package:grad_project/features/auth/ui/password_changed.dart';

class NewPasword extends StatelessWidget {
  const NewPasword({super.key});

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
              "Create New Password",
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
            child: SizedBox(
              height: 52,
              width: 350,
              child: CustomTextField(
                  isPassword: true,
                  controller: TextEditingController(),
                  labelText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 5),
            child: SizedBox(
              height: 52,
              width: 350,
              child: CustomTextField(
                  isPassword: true,
                  controller: TextEditingController(),
                  labelText: "Confirm Password"),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Center(
              child: CustomButton(
                  btn_name: "RESET PASSWORD",
                  v_padding: 8,
                  h_padding: 105,
                  onPressed: () {
                    navigateTo(context, screen: PasswordChanged());
                  })),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

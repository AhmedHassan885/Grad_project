import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/core/widgets/inputs/arrow_back_container.dart';
import 'package:grad_project/core/widgets/inputs/button.dart';
import 'package:grad_project/core/widgets/inputs/formfield.dart';
import 'package:grad_project/features/auth/ui/new_password.dart';

class Code extends StatelessWidget {
  const Code({super.key});

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
              "OTP Verification",
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: AppColor.dark_blue),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 70,
                child: CustomTextField(
                    controller: TextEditingController(), labelText: "   -"),
              ),
              SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 50,
                height: 70,
                child: CustomTextField(
                    controller: TextEditingController(), labelText: "   -"),
              ),
              SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 50,
                height: 70,
                child: CustomTextField(
                    controller: TextEditingController(), labelText: "   -"),
              ),
              SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 50,
                height: 70,
                child: CustomTextField(
                    controller: TextEditingController(), labelText: "   -"),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Center(
              child: CustomButton(
                  btn_name: "VERIFY",
                  v_padding: 8,
                  h_padding: 125,
                  onPressed: () {
                    navigateTo(context, screen: NewPasword());
                  })),
        ],
      ),
    );
  }
}

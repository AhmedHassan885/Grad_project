// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grad_project/features/onboarding/widgets/custom_elevatedButton_Signin_Register.dart';
import 'package:grad_project/features/onboarding/widgets/custom_image_signIn.dart';
import 'package:grad_project/features/onboarding/widgets/custom_text_signinAndup.dart';

class SignInAngRegister extends StatelessWidget {
  const SignInAngRegister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(child: ImageWidget()),
          SizedBox(
            height: 25,
          ),
          CustomTextSigninandup(),
          SizedBox(
            height: 40,
          ),
          CustomElevatedbuttonSigninRegister(),
        ],
      ),
    );
  }
}

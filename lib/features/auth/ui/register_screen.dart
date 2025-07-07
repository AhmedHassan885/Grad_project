// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/core/widgets/inputs/button.dart';
import 'dart:io';

import 'package:grad_project/core/widgets/inputs/formfield.dart';
import 'package:grad_project/features/auth/manager/auth_cubit.dart';
import 'package:grad_project/features/auth/manager/auth_state.dart';
import 'package:grad_project/features/auth/ui/signin_screen.dart';

import '../../../core/widgets/inputs/dropdownfield.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  String? selectedLevel;
  String? selectedRegisterType;
  File? profileImage;

  final List<String> levels = [" 1", " 2", " 3", " 4"];
  final List<String> registerTypes = ["student", "demonstrator", "doctor"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(28.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Register Now",
                  style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      color: AppColor.dark_blue),
                ),
              ),
              SizedBox(height: 40),
              CustomTextField(
                  controller: AuthCubit.get(context).name_Controller,
                  labelText: "Full Name"),
              CustomTextField(
                  controller: AuthCubit.get(context).email_Controller,
                  labelText: "Email Address",
                  keyboardType: TextInputType.emailAddress),
              CustomTextField(
                  controller: AuthCubit.get(context).phone_Controller,
                  labelText: "Phone Number",
                  keyboardType: TextInputType.phone),
              CustomTextField(
                  controller: AuthCubit.get(context).password_Controller,
                  labelText: "Password",
                  isPassword: true),
              CustomTextField(
                  controller:
                      AuthCubit.get(context).confirm_password_Controller,
                  labelText: "Confirm Password",
                  isPassword: true),
              CustomDropdownField(
                label: "Level",
                items: levels,
                selectedValue: selectedLevel,
                onChanged: (newValue) {
                  setState(() {
                    AuthCubit.get(context).selectedLevel = newValue;
                  });
                },
              ),
              CustomDropdownField(
                label: "Register Type",
                items: registerTypes,
                selectedValue: selectedRegisterType,
                onChanged: (newValue) {
                  setState(() {
                    AuthCubit.get(context).selectedRegisterType = newValue;
                  });
                },
              ),
              SizedBox(height: 15),
              // Center(
              //   child: GestureDetector(
              //     child: CircleAvatar(
              //       radius: 40,
              //       backgroundColor: Colors.grey[300],
              //       backgroundImage: profileImage != null
              //           ? FileImage(profileImage!)
              //           : null,
              //       child: profileImage == null
              //           ? Icon(Icons.cloud_upload,
              //               size: 30, color: Colors.grey[700])
              //           : null,
              //     ),
              //   ),
              // ),
              SizedBox(height: 15),
              BlocConsumer<AuthCubit, AuthState>(
                builder: (context, state) {
                  return Center(
                    child: CustomButton(
                      btn_name: state is RegisterLoadingState
                          ? "Loading..."
                          : "REGISTER",
                      v_padding: 12,
                      h_padding: 150,
                      onPressed: state is RegisterLoadingState
                          ? () {}
                          : () {
                              AuthCubit.get(context).onRegister();
                            },
                      // Remove the 'child' parameter; if you want to show a loading indicator, update CustomButton to support it or change the button text above.
                    ),
                  );
                },
                listener: (context, state) {
                  if (state is RegisterSuccessState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.msg),
                        backgroundColor: Colors.green,
                      ),
                    );
                    navigateTo(context, screen: SignINScreen());
                  } else if (state is RegisterErrorState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.error),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
              ),
              SizedBox(height: 10),
              Center(
                child: TextButton(
                  onPressed: () {
                    navigateTo(context,
                        screen: SignINScreen()); // Navigate to login
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have an Account? ",
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
        ),
      ),
    ));
  }
}

// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/core/widgets/inputs/button.dart';

import 'package:grad_project/core/widgets/inputs/formfield.dart';
import 'package:grad_project/features/auth/manager/auth_cubit.dart';
import 'package:grad_project/features/auth/manager/auth_state.dart';
import 'package:grad_project/features/auth/ui/register_screen.dart';
import 'package:grad_project/features/auth/ui/reset_password.dart';
import 'package:grad_project/features/students/ui/Bottom_nav_bar.dart';

class SignINScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<SignINScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        body: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(28.0),
              child: Center(
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
                            "Sign In ",
                            style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                                color: AppColor.dark_blue),
                          ),
                        ),
                        SizedBox(height: 40),
                        CustomTextField(
                            controller: _emailController,
                            labelText: "Email Address",
                            keyboardType: TextInputType.emailAddress),
                        CustomTextField(
                            controller: _passwordController,
                            labelText: "Password",
                            isPassword: true),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              navigateTo(context, screen: ResetPassword());
                            },
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff858383),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        BlocListener<AuthCubit, AuthState>(
                          listener: (context, state) {
                            if (state is LoginSuccessState) {
                              navigateTo(context, screen: BottonNavBtn());
                            } else if (state is LoginErrorState) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(state.error)),
                              );
                            }
                          },child:  Center(
                            child: CustomButton(
                                btn_name: "Sign In",
                                v_padding: 15,
                                h_padding: 150,
                                onPressed: () {
                                  AuthCubit.get(context).onLogin();
                                })),
                        ),
                       
                        SizedBox(height: 10),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              navigateTo(context, screen: RegisterScreen());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don’t Have an Account?",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff858383),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "  Register Here",
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
              ),
            );
          }
        ),
      ),
    );
  }
}

// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:grad_project/features/auth/manager/auth_cubit.dart';

class CustomTextOneAndTextTwo extends StatelessWidget {
  const CustomTextOneAndTextTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final Cubit = AuthCubit.get(context);
    final userinfo = Cubit.userModellogin;
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Welcome, ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: userinfo?.name ?? "User Name",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: " 👋",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Upgrade your skill for better futures!",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF97A9BD)),
          ),
        ],
      ),
    );
  }
}

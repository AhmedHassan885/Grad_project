// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/services/service_locator.dart';
import 'package:grad_project/features/students/data/repos/all_material_repo/all_material_repo_imp.dart';
import 'package:grad_project/features/students/ui/lec_content_screen.dart';
import 'package:grad_project/features/students/ui/manager/all_material_cubit/all_material_cubit.dart';
import 'package:grad_project/features/students/ui/widgets/lect.dart';

class Lectures extends StatelessWidget {
  final String title;


  const Lectures({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
   return  BlocProvider<AllMaterialCubit>(
      create: (context) =>
      AllMaterialCubit(getIt.get<AllMaterialRepoImp>())..fetchAllMaterials(),
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  color: const Color(0xff022D4F),
                ),
               Container(
                  width: double.infinity,
                  color: Colors.white,
               
            )],
            ),
         Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      const Text(
                        "   Lectures",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      height: 265,
                    child: lect(
                      onTap: (material) {
                        navigateTo(
                          context,
                          screen: LecContent( allMaterials: material,), // ✅ عنصر واحد فقط
                        );
                      },
                    )
                  )],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/core/services/service_locator.dart';
import 'package:grad_project/core/widgets/inputs/default_container.dart';
import 'package:grad_project/features/students/data/model/all_material_model/AllMaterialModel.dart';
import 'package:grad_project/features/students/data/repos/all_material_repo/all_material_repo_imp.dart';
import 'package:grad_project/features/students/ui/manager/all_material_cubit/all_material_cubit.dart';
import 'package:grad_project/features/students/ui/manager/all_material_cubit/all_material_state.dart';
import 'package:grad_project/features/students/ui/old_mater_lec_screen.dart';

class OldMaterials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AllMaterialCubit(getIt.get<AllMaterialRepoImp>())..fetchAllMaterials(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                
                Container(
                  width: double.infinity,
                  height: 300,
                  color: const Color(0xff022D4F),
                ),
                Expanded(child: Container(color: Colors.white)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                 const SizedBox(height: 100),
                  Row(
                    children: [
                      Container(
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(
                          color: const Color(0xffDEDEDE),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back_ios, color: AppColor.dark_blue, size: 16),
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Text(
                        'Old Materials',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                 const SizedBox(height: 20),
                  Expanded(
                    child: BlocBuilder<AllMaterialCubit, AllMaterialState>(
                      builder: (context, state) {
                        if (state is AllMaterialLoading) {
                          return const Center(child: CircularProgressIndicator());
                        } else if (state is AllMaterialFailure) {
                          return Center(child: Text(state.errorMessage));
                        } else if (state is AllMaterialSuccess) {
                          List<AllMaterialModel> oldMaterials = state.materialsList
                              .where((element) => element.status?.toLowerCase() == 'old')
                              .toList();

                          if (oldMaterials.isEmpty) {
                            return const Center(child: Text('No old materials available.'));
                          }

                          return ListView.separated(
                            itemCount: oldMaterials.length,
                            separatorBuilder: (_, __) => const SizedBox(height: 10),
                            itemBuilder: (context, index) {
                              final material = oldMaterials[index];
                              return DefaultContainer(
                                width: double.infinity,
                                height: 65,
                                title: material.title ?? "Untitled",
                                onpressed: () {
                                 navigateTo(context, screen: OldLectureScreen(material: material,));
                                },
                              );
                            },
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

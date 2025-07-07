// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/features/students/data/model/all_material_model/AllMaterialModel.dart';
import 'package:grad_project/features/students/ui/manager/all_material_cubit/all_material_cubit.dart';
import 'package:grad_project/features/students/ui/manager/all_material_cubit/all_material_state.dart';

class lect extends StatelessWidget {
  const lect({super.key, required this.onTap});
  final Function(AllMaterialModel) onTap;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllMaterialCubit, AllMaterialState>(
      builder: (context, state) {
        if (state is AllMaterialSuccess) {
          final materials = state.materialsList;

          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: materials.length,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) {
              final material = materials[index];
              return InkWell(
                onTap: () => onTap(material),
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "assets/images/vid.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        material.title ?? "Unknown",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff051926),
                        ),
                      ),
                      const Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff61646B),
                        ),
                      ),
                      Text(
                        material.createdAt?.split('T').first ?? "",
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Dr/${material.instructorId ?? ""}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (state is AllMaterialFailure) {
          return const Center(child: Text('Failed to load materials'));
        } else if (state is AllMaterialLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

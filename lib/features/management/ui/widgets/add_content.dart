// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:grad_project/features/management/ui/add_old_materialn_management.dart';

import 'item__add_content.dart';

class AddContent extends StatelessWidget {
  const AddContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 20,
      right: 20,
      child: Transform.translate(
        offset: Offset(0, 40),
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddOldMaterialnManagement(userName: 'Management'))); // Pass the userName here
            },
            child: ItemAddContent(title: 'Add content')),
      ),
    );
  }
}

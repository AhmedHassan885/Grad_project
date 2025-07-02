// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/features/management/ui/uplods_management.dart';

import 'munu_item__Orders.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(context, screen: UploadsScreenManagemebt(userName: 'Management')); // Pass the userName here
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ItemOrders(title: 'Orders'),
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';

class ArrowBackContainer extends StatelessWidget {
  const ArrowBackContainer({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 34,
        height: 33,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset(
          AppAssets.arrow_back,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

void navigateTo( context,{required Widget screen}) {
  Get.to( screen, duration: Duration(seconds: 1), transition: Transition.fade);
}

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer(
      {super.key,
      required this.width,
      required this.height,
      required this.title,
      required this.onpressed});
  final Callback onpressed;
  final double width;
  final double height;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Align(alignment: Alignment.centerLeft, child: Text(title))),
    );
  }
}

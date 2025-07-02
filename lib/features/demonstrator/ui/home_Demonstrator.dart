// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:grad_project/features/demonstrator/ui/widgets/custom_positsioned_fourItems_HomeDemonstrator.dart';
import 'package:grad_project/features/doctors/ui/widgets/customiconDoctor_And_nameDoctor_homeScreen.dart';

class DemonstratorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoctorProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DoctorProfileScreen extends StatefulWidget {
  @override
  _DoctorProfileScreenState createState() => _DoctorProfileScreenState();
}

class _DoctorProfileScreenState extends State<DoctorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              CustomIcondoctorAndNamedoctorHomescreen(
                text: "De. abdo",
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          CustomPositionedFourItemsHomeDemonstrator(),
        ],
      ),
    );
  }
}

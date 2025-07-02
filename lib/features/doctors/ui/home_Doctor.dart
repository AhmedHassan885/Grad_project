// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:grad_project/features/doctors/ui/widgets/custom_positsioned_fourItems_Home%20doctor.dart';
import 'package:grad_project/features/doctors/ui/widgets/customiconDoctor_And_nameDoctor_homeScreen.dart';

class DoctorScreen extends StatelessWidget {
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
                text: "Dr. Sayed",
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          CustomPositionedFourItemsHomeDoctor()
        ],
      ),
    );
  }
}

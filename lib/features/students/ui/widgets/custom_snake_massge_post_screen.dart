import 'package:flutter/material.dart';

class CustomSnakeMassgePostScreen extends StatelessWidget {
  const CustomSnakeMassgePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      left: 16,
      right: 16,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff022B5B),
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Quiz Added")),
          );
        },
        child: const Text("Add", style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

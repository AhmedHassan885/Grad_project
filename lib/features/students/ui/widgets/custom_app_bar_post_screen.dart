import 'package:flutter/material.dart';

class CustomAppBarPostScreen extends StatelessWidget {
  const CustomAppBarPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      left: 16,
      right: 16,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xff022B5B),
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [

            const CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              child: Icon(Icons.menu, color: Colors.black),
            ),
            const Spacer(),
            // Welcome 👋 sayed + avatar
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("Welcome,", style: TextStyle(color: Colors.white, fontSize: 16)),
                    SizedBox(height: 4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("👋", style: TextStyle(fontSize: 16)),
                        SizedBox(width: 4),
                        Text("sayed", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/Rectangle 97.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

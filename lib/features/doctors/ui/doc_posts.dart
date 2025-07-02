import 'package:flutter/material.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';

class HomeSocialScreen extends StatelessWidget {
  const HomeSocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                color: Color(0xff022D4F),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Header
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome, Ahmed 👋",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text("Upgrade your skill for better futures!",
                        style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),
              SizedBox(height: 50),
              // Post Widget
              PostWidget(),
              SizedBox(height: 12),
              PostWidget(),
              SizedBox(height: 12),
              PostWidget(),
              SizedBox(height: 12),
              PostWidget(),
            ],
          ),
        ]),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage(AppAssets.post_profile), // أو NetworkImage
                  radius: 20,
                ),
                SizedBox(width: 10),
                Text("mohamed ahmed",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Icon(Icons.more_vert)
              ],
            ),
            SizedBox(height: 10),
            Text("Thank you for all student in my account",
                style: TextStyle(fontSize: 15)),
            SizedBox(height: 45),
            // Likes & Comments Row
            Row(
              children: [
                Icon(Icons.comment_outlined, size: 20),
                SizedBox(width: 4),
                Text("22"),
                SizedBox(width: 16),
              ],
            ),
            SizedBox(height: 10),
            // Comment Input
            Row(
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage(AppAssets.doctor), radius: 18),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Add a comment",
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

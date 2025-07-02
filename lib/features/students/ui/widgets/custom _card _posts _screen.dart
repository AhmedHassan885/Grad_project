// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';

class CustomCardPostsScreen extends StatefulWidget {
  const CustomCardPostsScreen({super.key});

  @override
  State<CustomCardPostsScreen> createState() => _CustomCardPostsScreenState();
}

class _CustomCardPostsScreenState extends State<CustomCardPostsScreen> {
  int likeCount = 22;
  int commentCount = 22;
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
      likeCount += isLiked ? 1 : -1;
    });
  }

  void openCommentSheet() {
    TextEditingController commentController = TextEditingController();

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Add a comment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                controller: commentController,
                decoration:
                    InputDecoration(hintText: "Write your comment here"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (commentController.text.trim().isNotEmpty) {
                    setState(() {
                      commentCount++;
                    });
                    Navigator.pop(context);
                  }
                },
                child: Text("Post"),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, 40),
      child: Container(
        width: double.infinity,
        height: 300,
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          border: Border.all(color: Colors.grey.shade300),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 6, offset: Offset(0, 5)),
            BoxShadow(color: Colors.grey, blurRadius: 6, offset: Offset(0, -3)),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Image(image: AssetImage(AppAssets.post_profile)),
                  ),
                  SizedBox(width: 20),
                  Text("mohamed ahmed",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 17.47)),
                  Spacer(),
                  Icon(Icons.more_vert, size: 26)
                ],
              ),
              SizedBox(height: 20),
              Text("Thank you for all student in my account",
                  style:
                      TextStyle(fontSize: 17.47, fontWeight: FontWeight.w500)),
              SizedBox(height: 40),
              Row(
                children: [
                  // GestureDetector(
                  //   onTap: toggleLike,
                  //   child: Icon(
                  //     Icons.favorite,
                  //     color: isLiked ? Colors.red : Colors.grey,
                  //     size: 28,
                  //   ),
                  // ),
                  // SizedBox(width: 8),
                  // Text("$likeCount",
                  //     style:
                  //         TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  // SizedBox(width: 22),
                  GestureDetector(
                    onTap: openCommentSheet,
                    child: Icon(Icons.chat_bubble_outline,
                        size: 28, color: Colors.grey[700]),
                  ),
                  SizedBox(width: 8),
                  Text("$commentCount",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  // Spacer(),
                  // Text("Liked by ${340 + (isLiked ? 1 : 0)}",
                  //     style: TextStyle(
                  //         fontWeight: FontWeight.w700, fontSize: 15.29)),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: openCommentSheet,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage(AppAssets.doctor),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Add a comment",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

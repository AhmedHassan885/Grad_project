// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/functions/custom_bottom%20navigation_bar.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';
import 'package:grad_project/features/students/data/model/all_posts_model/AllPostsModel.dart';

class CustomCardPostItem extends StatelessWidget {
  final AllPostModel postModel;

  const CustomCardPostItem({super.key, required this.postModel});

  void openCommentSheet(BuildContext context) {
    TextEditingController commentController = TextEditingController();

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Add a comment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                controller: commentController,
                decoration:
                const InputDecoration(hintText: "Write your comment here"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (commentController.text.trim().isNotEmpty) {
                    Navigator.pop(context);
                  }
                },
                child: const Text("Post"),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 6, offset: Offset(0, 5)),
          BoxShadow(color: Colors.grey, blurRadius: 6, offset: Offset(0, -3)),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          // Profile Row
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(AppAssets.post_profile),
              ),
              const SizedBox(width: 12),
              Text(
               postModel.instructor?.user?.name ?? "No name",
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              const Spacer(),
              const Icon(Icons.more_vert),
            ],
          ),

          const SizedBox(height: 20),

          // Post Content
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              postModel.content ?? "No content",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          const SizedBox(height: 30),

          Row(
            children: [
              GestureDetector(
                onTap: () => openCommentListSheet(context, postModel.comments ?? []),
                child: Icon(Icons.chat_bubble_outline,
                    size: 28, color: Colors.grey[700]),
              ),
              const SizedBox(width: 8),
              Text(
                "${postModel.comments?.length ?? 0}",
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Add comment bar
          GestureDetector(
            onTap: () => openCommentSheet(context),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(AppAssets.doctor),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Add a comment...",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
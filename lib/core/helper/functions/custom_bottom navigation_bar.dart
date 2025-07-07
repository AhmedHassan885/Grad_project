import 'package:flutter/material.dart';
import 'package:grad_project/features/students/data/model/all_posts_model/Comments.dart';

void openCommentListSheet(BuildContext context, List<Comments> comments) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "All Comments",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff002B5B),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: comments.isEmpty
                    ? const Center(
                  child: Text(
                    "No comments yet.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                )
                    : ListView.separated(
                  itemCount: comments.length,
                  separatorBuilder: (_, __) => const Divider(),
                  itemBuilder: (context, index) {
                    final comment = comments[index];
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.grey[200],
                          backgroundImage: AssetImage("assets/images/doctor.png"),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comment.user?.name ?? "Anonymous",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                comment.content ?? "",
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
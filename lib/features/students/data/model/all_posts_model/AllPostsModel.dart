import 'Instructor.dart';
import 'Comments.dart';

class AllPostModel {
  int? id;
  int? instructorId;
  String? content;
  String? attachments;
  int? createdAt;
  Instructor? instructor;
  List<Comments>? comments;

  AllPostModel({
    this.id,
    this.instructorId,
    this.content,
    this.attachments,
    this.createdAt,
    this.instructor,
    this.comments,
  });

  /// ✅ Factory Constructor
  factory AllPostModel.fromJson(Map<String, dynamic> json) {
    return AllPostModel(
      id: json['id'],
      instructorId: json['instructor_id'],
      content: json['content'],
      attachments: json['attachments'],
      createdAt: json['created_at'],
      instructor: json['instructor'] != null
          ? Instructor.fromJson(json['instructor'])
          : null,
      comments: json['comments'] != null
          ? List<Comments>.from(
          json['comments'].map((x) => Comments.fromJson(x)))
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['instructor_id'] = instructorId;
    map['content'] = content;
    map['attachments'] = attachments;
    map['created_at'] = createdAt;
    if (instructor != null) {
      map['instructor'] = instructor?.toJson();
    }
    if (comments != null) {
      map['comments'] = comments?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
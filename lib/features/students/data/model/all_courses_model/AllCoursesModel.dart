// ignore_for_file: file_names

import 'Instructor.dart';
import 'Level.dart';

class AllCoursesModel {
  int? id;
  String? title;
  String? description;
  int? levelId;
  int? instructorId;
  String? createdAt;
  String? updatedAt;
  Instructor? instructor;
  Level? level;
  List<dynamic>? materials;

  AllCoursesModel({
    this.id,
    this.title,
    this.description,
    this.levelId,
    this.instructorId,
    this.createdAt,
    this.updatedAt,
    this.instructor,
    this.level,
    this.materials,
  });

  factory AllCoursesModel.fromJson(Map<String, dynamic> json) {
    return AllCoursesModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      levelId: json['level_id'],
      instructorId: json['instructor_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      instructor: json['instructor'] != null
          ? Instructor.fromJson(json['instructor'])
          : null,
      level: json['level'] != null
          ? Level.fromJson(json['level'])
          : null,
      materials: json['materials'] ?? [], // just list<dynamic>
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['description'] = description;
    map['level_id'] = levelId;
    map['instructor_id'] = instructorId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (instructor != null) {
      map['instructor'] = instructor!.toJson();
    }
    if (level != null) {
      map['level'] = level!.toJson();
    }
    if (materials != null) {
      map['materials'] = materials;
    }
    return map;
  }
}
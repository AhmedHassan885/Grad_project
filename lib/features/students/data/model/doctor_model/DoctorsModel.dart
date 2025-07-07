// ignore_for_file: file_names, unnecessary_type_check

import 'User.dart';

class DoctorsModel {
  int? id;
  int? userId;
  String? department;
  String? type;
  User? user;
  List<dynamic>? courses; // Replace `dynamic` with the actual Course model if exists

  DoctorsModel({
    this.id,
    this.userId,
    this.department,
    this.type,
    this.user,
    this.courses,
  });

  factory DoctorsModel.fromJson(Map<String, dynamic> json) {
    return DoctorsModel(
      id: json['id'],
      userId: json['user_id'],
      department: json['department'],
      type: json['type'],
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      courses: json['courses'] != null
          ? List<dynamic>.from(json['courses'].map((v) => v)) // OR map to CourseModel.fromJson(v)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['department'] = department;
    map['type'] = type;
    if (user != null) {
      map['user'] = user!.toJson();
    }
    if (courses != null) {
      map['courses'] = courses!.map((v) {
        if (v is Map) return v;
        if (v is dynamic && v.toJson != null) return v.toJson();
        return v;
      }).toList();
    }
    return map;
  }
}
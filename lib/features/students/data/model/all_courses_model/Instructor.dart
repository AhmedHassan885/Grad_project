// ignore_for_file: file_names

import 'User.dart';

class Instructor {
  Instructor({
      this.id, 
      this.userId, 
      this.department, 
      this.type, 
      this.user,});

  Instructor.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    department = json['department'];
    type = json['type'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  int? id;
  int? userId;
  String? department;
  String? type;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['department'] = department;
    map['type'] = type;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}
// ignore_for_file: file_names

class AllMaterialModel {
  AllMaterialModel({
      this.id, 
      this.title, 
      this.materialName, 
      this.materialType, 
      this.materialLink, 
      this.instructorId, 
      this.status, 
      this.createdAt, 
      this.updatedAt, 
      this.courseId,});

  AllMaterialModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    materialName = json['material_name'];
    materialType = json['material_type'];
    materialLink = json['material_link'];
    instructorId = json['instructor_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    courseId = json['course_id'];
  }
  int? id;
  String? title;
  String? materialName;
  String? materialType;
  String? materialLink;
  int? instructorId;
  String? status;
  String? createdAt;
  String? updatedAt;
  int? courseId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['material_name'] = materialName;
    map['material_type'] = materialType;
    map['material_link'] = materialLink;
    map['instructor_id'] = instructorId;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['course_id'] = courseId;
    return map;
  }

}
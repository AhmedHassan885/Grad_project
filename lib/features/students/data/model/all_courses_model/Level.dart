// ignore_for_file: file_names

class Level {
  Level({
      this.id, 
      this.name, 
      this.description, 
      this.order, 
      this.createdAt, 
      this.updatedAt,});

  Level.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    order = json['order'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? name;
  String? description;
  int? order;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['description'] = description;
    map['order'] = order;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}
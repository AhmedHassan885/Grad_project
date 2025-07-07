class User {
  User({
      this.id, 
      this.name, 
      this.email, 
      this.emailVerifiedAt, 
      this.createdAt, 
      this.updatedAt, 
      this.phone, 
      this.image, 
      this.type, 
      this.status,});

  User.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    phone = json['phone'];
    image = json['image'];
    type = json['type'];
    status = json['status'];
  }
  int? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  String? phone;
  String? image;
  String? type;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['email_verified_at'] = emailVerifiedAt;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['phone'] = phone;
    map['image'] = image;
    map['type'] = type;
    map['status'] = status;
    return map;
  }

}
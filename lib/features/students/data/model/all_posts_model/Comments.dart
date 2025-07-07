import 'User.dart';

class Comments {
  Comments({
      this.id, 
      this.postId, 
      this.userId, 
      this.content, 
      this.createdAt, 
      this.updatedAt, 
      this.user,});

  Comments.fromJson(dynamic json) {
    id = json['id'];
    postId = json['post_id'];
    userId = json['user_id'];
    content = json['content'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  int? id;
  int? postId;
  int? userId;
  String? content;
  String? createdAt;
  String? updatedAt;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['post_id'] = postId;
    map['user_id'] = userId;
    map['content'] = content;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}
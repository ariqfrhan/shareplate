class User {
  String? uid;
  String? name;
  String? email;
  String? photoUrl;
  String? createdAt;
  String? updatedAt;

  User(
      {this.uid,
      this.name,
      this.email,
      this.photoUrl,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    email = json['email'];
    photoUrl = json['photoUrl'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['name'] = name;
    data['email'] = email;
    data['photoUrl'] = photoUrl;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

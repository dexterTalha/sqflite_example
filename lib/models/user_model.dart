// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserModel {
  final int? id;
  final String? name;
  final String? email;
  final String? userName;
  final String? password;
  final String? image;
  UserModel({
    this.id,
    this.name,
    this.email,
    this.userName,
    this.password,
    this.image,
  });

  UserModel copyWith({
    int? id,
    String? name,
    String? email,
    String? userName,
    String? password,
    String? image,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      userName: userName ?? this.userName,
      password: password ?? this.password,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'username': userName,
      'password': password,
      'image': image,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      userName: map['username'] != null ? map['username'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }
}

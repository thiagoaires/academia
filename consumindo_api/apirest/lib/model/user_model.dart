import 'dart:convert';

class UserModel {
  String id;
  String name;
  String username;
  List<UserModel> types;

  UserModel({
    this.id,
    this.name,
    this.username,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'types': types?.map((x) => x.toMap())?.toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      username: map['username'],
      types:
          List<UserModel>.from(map['types']?.map((x) => UserModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}

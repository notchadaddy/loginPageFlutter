// To parse this JSON data, do
//
//     final loginPost = loginPostFromJson(jsonString);

import 'dart:convert';

LoginPost loginPostFromJson(String str) => LoginPost.fromJson(json.decode(str));

String loginPostToJson(LoginPost data) => json.encode(data.toJson());

class LoginPost {
  LoginPost({
    this.id,
    this.name,
    this.token,
  });

  String id;
  String name;
  String token;

  factory LoginPost.fromJson(Map<String, dynamic> json) => LoginPost(
        id: json["id"],
        name: json["name"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "token": token,
      };
}

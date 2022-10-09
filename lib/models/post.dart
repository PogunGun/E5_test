
import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.id,
    this.body,
    required this.user,
    required this.urls,
  });

  String id;
  String? body;
  User? user;
  Urls? urls;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        body: json["body"],
        user: User.fromJson(json["user"]),
        urls: Urls.fromJson(json["urls"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "body": body,
        "user":user,
        "urls": urls,
      };
}
class User {
  User({
    required  this.id,
    required this.username,
    required   this.name,
  });

  String id;
  String username;
  String name;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    username: json["username"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "name": name,
  };
}
class Urls {
  Urls({
    required this.raw,
    required this.full,
    required this.regular
  });

  String raw;
  String full;
  String regular;


  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
    raw: json["raw"],
    full: json["full"],
    regular: json["regular"]
  );

  Map<String, dynamic> toJson() => {
    "raw": raw,
    "full": full,
    "regular": regular,
  };
}
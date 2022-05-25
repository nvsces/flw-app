// To parse this JSON data, do
//
//     final trip = tripFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Trip tripFromJson(String str) => Trip.fromJson(json.decode(str));

String tripToJson(Trip data) => json.encode(data.toJson());

class Trip {
  Trip({
    required this.author,
    required this.date,
    required this.route,
    required this.count,
    required this.type,
    required this.itemId,
  });

  final Author author;
  final String date;
  final String route;
  final String count;
  final String type;
  final int itemId;

  factory Trip.fromJson(Map<String, dynamic> json) => Trip(
        author: Author.fromJson(json["author"]),
        date: json["date"],
        route: json["route"],
        count: json["count"],
        type: json["type"],
        itemId: json["itemId"],
      );

  Map<String, dynamic> toJson() => {
        "author": author.toJson(),
        "date": date,
        "route": route,
        "count": count,
        "type": type,
        "itemId": itemId,
      };
}

class Author {
  Author({
    required this.name,
    required this.accessToken,
    required this.userVkId,
    required this.photoUrl,
  });

  final String name;
  final String accessToken;
  final int userVkId;
  final String photoUrl;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        name: json["name"],
        accessToken: json["access_token"],
        userVkId: json["user_vk_id"],
        photoUrl: json["photo_url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "access_token": accessToken,
        "user_vk_id": userVkId,
        "photo_url": photoUrl,
      };
}

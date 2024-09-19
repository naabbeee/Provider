// To parse this JSON data, do
//
//     final listusers = listusersFromJson(jsonString);

import 'dart:convert';

List<Listusers> listusersFromJson(String str) => List<Listusers>.from(json.decode(str).map((x) => Listusers.fromJson(x)));

String listusersToJson(List<Listusers> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Listusers {
    int? userId;
    int? id;
    String? title;
    String? body;

    Listusers({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    factory Listusers.fromJson(Map<String, dynamic> json) => Listusers(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}

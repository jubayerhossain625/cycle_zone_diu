// To parse this JSON data, do
//
//     final notification = notificationFromJson(jsonString);

import 'dart:convert';

NotificationModel notificationFromJson(String str) => NotificationModel.fromJson(json.decode(str));

String notificationToJson(NotificationModel data) => json.encode(data.toJson());

class NotificationModel {
  int? id;
  int? userId;
  String? title;
  String? description;

  NotificationModel({
    this.id,
    this.userId,
    this.title,
    this.description,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
    id: json["id"],
    userId: json["userId"],
    title: json["title"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "title": title,
    "description": description,
  };
}

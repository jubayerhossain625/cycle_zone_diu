// To parse this JSON data, do
//
//     final history = historyFromJson(jsonString);

import 'dart:convert';

History historyFromJson(String str) => History.fromJson(json.decode(str));

String historyToJson(History data) => json.encode(data.toJson());

class History {
  int? id;
  int? userId;
  int? rideId;
  int? cycleId;
  String? rideDate;
  String? startTime;
  String? endTime;
  String? cost;
  String? reward;

  History({
    this.id,
    this.userId,
    this.rideId,
    this.cycleId,
    this.rideDate,
    this.startTime,
    this.endTime,
    this.cost,
    this.reward,
  });

  factory History.fromJson(Map<String, dynamic> json) => History(
    id: json["id"],
    userId: json["userId"],
    rideId: json["rideId"],
    cycleId: json["cycleId"],
    rideDate: json["rideDate"],
    startTime: json["startTime"],
    endTime: json["endTime"],
    cost: json["cost"],
    reward: json["reward"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "rideId": rideId,
    "cycleId": cycleId,
    "rideDate": rideDate,
    "startTime": startTime,
    "endTime": endTime,
    "cost": cost,
    "reward": reward,
  };
}

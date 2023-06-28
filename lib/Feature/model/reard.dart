

class Reward {
  double? totalReward;

  Reward({
    this.totalReward,
  });

  factory Reward.fromJson(Map<String, dynamic> json) => Reward(
    totalReward: json["totalReward"],
  );

  Map<String, dynamic> toJson() => {
    "totalReward": totalReward,
  };
}
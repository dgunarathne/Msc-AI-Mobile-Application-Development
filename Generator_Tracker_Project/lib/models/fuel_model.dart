class FuelModel {
  String generatorId;
  DateTime date;
  double liters;
  double dieselPrice;

  FuelModel({
    required this.generatorId,
    required this.date,
    required this.liters,
    required this.dieselPrice,
  });

  Map<String, dynamic> toJson() {
    return {
      'generatorId': generatorId,
      'date': date.toIso8601String(),
      'liters': liters,
      'dieselPrice': dieselPrice,
    };
  }

  factory FuelModel.fromJson(
      Map<String, dynamic> json) {
    return FuelModel(
      generatorId: json['generatorId'],
      date: DateTime.parse(json['date']),
      liters: json['liters'],
      dieselPrice: json['dieselPrice'],
    );
  }
}

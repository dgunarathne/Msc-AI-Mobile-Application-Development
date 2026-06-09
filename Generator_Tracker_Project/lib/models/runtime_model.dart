class RuntimeModel {
  String generatorId;
  DateTime date;
  double hours;

  RuntimeModel({
    required this.generatorId,
    required this.date,
    required this.hours,
  });

  Map<String, dynamic> toJson() {
    return {
      'generatorId': generatorId,
      'date': date.toIso8601String(),
      'hours': hours,
    };
  }

  factory RuntimeModel.fromJson(
      Map<String, dynamic> json) {
    return RuntimeModel(
      generatorId: json['generatorId'],
      date: DateTime.parse(json['date']),
      hours: json['hours'],
    );
  }
}

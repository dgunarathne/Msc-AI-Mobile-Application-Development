class RuntimeEntry {
  String generatorId;
  String date;
  double hours;

  RuntimeEntry({
    required this.generatorId,
    required this.date,
    required this.hours,
  });

  Map<String, dynamic> toJson() => {
        'generatorId': generatorId,
        'date': date,
        'hours': hours,
      };
}

class FuelEntry {
  String generatorId;
  String date;
  double liters;
  double price;

  FuelEntry({
    required this.generatorId,
    required this.date,
    required this.liters,
    required this.price,
  });

  Map<String, dynamic> toJson() => {
        'generatorId': generatorId,
        'date': date,
        'liters': liters,
        'price': price,
      };
}

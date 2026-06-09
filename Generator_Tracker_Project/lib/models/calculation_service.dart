class CalculationService {
  static double totalRuntime(
      List<double> runtimes) {
    return runtimes.fold(
      0,
      (a, b) => a + b,
    );
  }

  static double totalFuelAdded(
      List<double> fuelEntries) {
    return fuelEntries.fold(
      0,
      (a, b) => a + b,
    );
  }

  static double fuelConsumed(
    double runtimeHours,
    double consumptionRate,
  ) {
    return runtimeHours * consumptionRate;
  }

  static double remainingFuel({
    required double fuelAdded,
    required double runtimeHours,
    required double consumptionRate,
  }) {
    return fuelAdded -
        (runtimeHours * consumptionRate);
  }

  static double actualConsumptionRate({
    required double fuelUsed,
    required double runtimeHours,
  }) {
    if (runtimeHours == 0) return 0;
    return fuelUsed / runtimeHours;
  }
}

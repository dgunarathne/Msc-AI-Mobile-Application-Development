class ReportService {

  static double actualFuelUsage({

    required double fuelAdded,

    required double remainingFuel,

    required double runtime,
  }) {

    if (runtime == 0) {
      return 0;
    }

    return
        (fuelAdded -
                remainingFuel) /
            runtime;
  }
}

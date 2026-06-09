import 'package:flutter_test/flutter_test.dart';

import '../lib/services/calculation_service.dart';

void main() {

  test(
    "Remaining Fuel Calculation",
    () {

      double result =
          CalculationService
              .remainingFuel(
        fuelAdded: 500,
        runtimeHours: 20,
        consumptionRate: 10,
      );

      expect(result, 300);
    },
  );
}

import 'package:flutter/material.dart';

class GeneratorDetailScreen
    extends StatelessWidget {

  final Map<String, dynamic> generator;

  const GeneratorDetailScreen({
    super.key,
    required this.generator,
  });

  @override
  Widget build(BuildContext context) {

    double tankCapacity = 500;

    double fuelAdded = 400;

    double runtimeHours = 12;

    double consumptionRate = 10;

    double fuelConsumed =
        runtimeHours *
            consumptionRate;

    double remainingFuel =
        fuelAdded -
            fuelConsumed;

    double percentage =
        remainingFuel /
            tankCapacity;

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Generator Details",
        ),
      ),

      body: SingleChildScrollView(

        padding:
            const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Card(

              child: Padding(

                padding:
                    const EdgeInsets.all(16),

                child: Column(

                  children: [

                    const Icon(
                      Icons.electrical_services,
                      size: 60,
                    ),

                    Text(
                      generator["name"],
                    ),

                    Text(
                      generator["code"],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Fuel Status",
              style: TextStyle(
                fontSize: 20,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            LinearProgressIndicator(
              value: percentage,
              minHeight: 12,
            ),

            const SizedBox(height: 10),

            Text(
              "Remaining Fuel : "
              "${remainingFuel.toStringAsFixed(2)} L",
            ),

            const SizedBox(height: 25),

            Card(

              child: Padding(

                padding:
                    const EdgeInsets.all(16),

                child: Column(

                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    Text(
                      "Tank Capacity : "
                      "$tankCapacity L",
                    ),

                    Text(
                      "Runtime : "
                      "$runtimeHours Hours",
                    ),

                    Text(
                      "Consumption Rate : "
                      "$consumptionRate L/Hr",
                    ),

                    Text(
                      "Fuel Added : "
                      "$fuelAdded L",
                    ),

                    Text(
                      "Fuel Consumed : "
                      "$fuelConsumed L",
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(

              color:
                  Colors.blue.shade50,

              child: Padding(

                padding:
                    const EdgeInsets.all(16),

                child: Column(

                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: const [

                    Text(
                      "Calculation",
                      style: TextStyle(
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Remaining Fuel = "
                      "Fuel Added - "
                      "(Runtime × Consumption Rate)",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

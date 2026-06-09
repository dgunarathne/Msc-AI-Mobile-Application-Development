import 'package:flutter/material.dart';

class DashboardScreen
    extends StatelessWidget {

  const DashboardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
            const Text("Dashboard"),
      ),

      body: Padding(

        padding:
            const EdgeInsets.all(20),

        child: GridView.count(

          crossAxisCount: 2,

          crossAxisSpacing: 15,

          mainAxisSpacing: 15,

          children: [

            dashboardCard(
              "Generators",
              "12",
              Icons.electrical_services,
            ),

            dashboardCard(
              "Fuel Remaining",
              "2450 L",
              Icons.local_gas_station,
            ),

            dashboardCard(
              "Runtime",
              "350 Hr",
              Icons.timer,
            ),

            dashboardCard(
              "Cost",
              "LKR 250,000",
              Icons.money,
            ),
          ],
        ),
      ),
    );
  }

  Widget dashboardCard(
    String title,
    String value,
    IconData icon,
  ) {
    return Card(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,

        children: [
          Icon(icon, size: 40),
          const SizedBox(height: 10),
          Text(title),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight:
                  FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'runtime_tab.dart';
import 'fuel_tab.dart';

class RuntimeScreen extends StatelessWidget {
  const RuntimeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,

      child: Scaffold(
        appBar: AppBar(
          title:
              const Text("Generator Tracker"),

          bottom: const TabBar(
            tabs: [
              Tab(text: "Runtime"),
              Tab(text: "Fuel"),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            RuntimeTab(),
            FuelTab(),
          ],
        ),
      ),
    );
  }
}

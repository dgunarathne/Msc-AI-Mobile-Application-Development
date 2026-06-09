import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FuelTab extends StatefulWidget {
  const FuelTab({super.key});

  @override
  State<FuelTab> createState() =>
      _FuelTabState();
}

class _FuelTabState
    extends State<FuelTab> {

  DateTime selectedDate =
      DateTime.now();

  String? generator;

  final litersController =
      TextEditingController();

  final priceController =
      TextEditingController();

  Future<void> selectDate() async {

    DateTime? picked =
        await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2024),
      lastDate: DateTime(2035),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16),

      child: Column(
        children: [

          DropdownButtonFormField(
            decoration:
                const InputDecoration(
              labelText: "Generator",
            ),

            items: const [
              DropdownMenuItem(
                value: "GEN001",
                child: Text("GEN001"),
              ),
            ],

            onChanged: (value) {
              generator = value;
            },
          ),

          ListTile(
            title: Text(
              DateFormat(
                'yyyy-MM-dd',
              ).format(selectedDate),
            ),

            trailing:
                const Icon(Icons.calendar_month),

            onTap: selectDate,
          ),

          TextField(
            controller: litersController,

            keyboardType:
                TextInputType.number,

            decoration:
                const InputDecoration(
              labelText: "Liters Added",
            ),
          ),

          const SizedBox(height: 15),

          TextField(
            controller: priceController,

            keyboardType:
                TextInputType.number,

            decoration:
                const InputDecoration(
              labelText:
                  "Diesel Price Per Liter",
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              showConfirmationDialog(
                context,
                "Save Fuel Data?",
              );
            },

            child: const Text("Save"),
          )
        ],
      ),
    );
  }
}

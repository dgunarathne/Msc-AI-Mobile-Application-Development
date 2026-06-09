import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RuntimeTab extends StatefulWidget {
  const RuntimeTab({super.key});

  @override
  State<RuntimeTab> createState() =>
      _RuntimeTabState();
}

class _RuntimeTabState
    extends State<RuntimeTab> {

  DateTime selectedDate =
      DateTime.now();

  final runtimeController =
      TextEditingController();

  String? selectedGenerator;

  Future<void> pickDate() async {

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
              selectedGenerator = value;
            },
          ),

          const SizedBox(height: 15),

          ListTile(
            title: Text(
              DateFormat(
                "yyyy-MM-dd",
              ).format(selectedDate),
            ),

            trailing: const Icon(
              Icons.calendar_month,
            ),

            onTap: pickDate,
          ),

          const SizedBox(height: 15),

          TextField(
            controller: runtimeController,

            keyboardType:
                TextInputType.number,

            decoration:
                const InputDecoration(
              labelText: "Runtime Hours",
            ),
          ),

          const SizedBox(height: 30),

          ElevatedButton(
            onPressed: () {
              showConfirmationDialog(
                context,
                "Save Runtime Data?",
              );
            },

            child: const Text("Save"),
          ),
        ],
      ),
    );
  }
}

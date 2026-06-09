import 'package:flutter/material.dart';
import 'add_generator_screen.dart';
import 'generator_detail_screen.dart';

class GeneratorListScreen extends StatefulWidget {
  const GeneratorListScreen({super.key});

  @override
  State<GeneratorListScreen> createState() =>
      _GeneratorListScreenState();
}

class _GeneratorListScreenState
    extends State<GeneratorListScreen> {

  final List<Map<String, dynamic>> generators = [
    {
      "name": "Factory Generator",
      "code": "CAT-18KS",
      "fuel": 320.0
    },
    {
      "name": "Warehouse Generator",
      "code": "GEN-200",
      "fuel": 180.0
    }
  ];

  Future<bool?> confirmDelete() async {
    return showDialog<bool>(
      context: context,

      builder: (_) => AlertDialog(
        title: const Text("Delete"),

        content: const Text(
          "Are you sure?",
        ),

        actions: [
          TextButton(
            onPressed: () =>
                Navigator.pop(
              context,
              false,
            ),
            child: const Text("No"),
          ),

          ElevatedButton(
            onPressed: () =>
                Navigator.pop(
              context,
              true,
            ),
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
            const Text("Generators"),
      ),

      body: ListView.builder(
        itemCount: generators.length,

        itemBuilder: (context, index) {

          final generator =
              generators[index];

          return Dismissible(

            key: Key(
              generator["code"],
            ),

            direction:
                DismissDirection.endToStart,

            confirmDismiss: (_) =>
                confirmDelete(),

            onDismissed: (_) {

              setState(() {
                generators.removeAt(index);
              });
            },

            background: Container(
              color: Colors.red,
              alignment:
                  Alignment.centerRight,
              padding:
                  const EdgeInsets.all(20),
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),

            child: Card(

              child: ListTile(

                leading: const Icon(
                  Icons.electrical_services,
                ),

                title: Text(
                  generator["name"],
                ),

                subtitle: Text(
                  generator["code"],
                ),

                trailing: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center,

                  children: [

                    const Text(
                      "Fuel",
                    ),

                    Text(
                      "${generator["fuel"]}L",
                    ),
                  ],
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          GeneratorDetailScreen(
                        generator:
                            generator,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),

      floatingActionButton:
          FloatingActionButton(

        child: const Icon(Icons.add),

        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  const AddGeneratorScreen(),
            ),
          );
        },
      ),
    );
  }
}

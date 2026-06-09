import 'package:flutter/material.dart';

class AddGeneratorScreen
    extends StatefulWidget {

  const AddGeneratorScreen({
    super.key,
  });

  @override
  State<AddGeneratorScreen> createState() =>
      _AddGeneratorScreenState();
}

class _AddGeneratorScreenState
    extends State<AddGeneratorScreen> {

  final nameController =
      TextEditingController();

  final codeController =
      TextEditingController();

  final tankController =
      TextEditingController();

  final rateController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
            const Text("Add Generator"),
      ),

      body: Padding(

        padding:
            const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller:
                  nameController,

              decoration:
                  const InputDecoration(
                labelText:
                    "Generator Name",
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller:
                  codeController,

              decoration:
                  const InputDecoration(
                labelText:
                    "Generator Code",
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller:
                  tankController,

              keyboardType:
                  TextInputType.number,

              decoration:
                  const InputDecoration(
                labelText:
                    "Tank Capacity",
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller:
                  rateController,

              keyboardType:
                  TextInputType.number,

              decoration:
                  const InputDecoration(
                labelText:
                    "Consumption Rate",
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(

              onPressed: () {

                ScaffoldMessenger.of(
                        context)
                    .showSnackBar(
                  const SnackBar(
                    content:
                        Text("Saved"),
                  ),
                );
              },

              child:
                  const Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class EditGeneratorScreen
    extends StatefulWidget {

  final String name;
  final String code;

  const EditGeneratorScreen({
    super.key,
    required this.name,
    required this.code,
  });

  @override
  State<EditGeneratorScreen> createState() =>
      _EditGeneratorScreenState();
}

class _EditGeneratorScreenState
    extends State<EditGeneratorScreen> {

  late TextEditingController nameController;
  late TextEditingController codeController;

  @override
  void initState() {

    super.initState();

    nameController =
        TextEditingController(
      text: widget.name,
    );

    codeController =
        TextEditingController(
      text: widget.code,
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
            const Text("Edit Generator"),
      ),

      body: Padding(

        padding:
            const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller:
                  nameController,
            ),

            const SizedBox(height: 20),

            TextField(
              controller:
                  codeController,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child:
                  const Text("Update"),
            )
          ],
        ),
      ),
    );
  }
}

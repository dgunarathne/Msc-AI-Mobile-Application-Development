import 'package:flutter/material.dart';

Future<bool?> showConfirmationDialog(
  BuildContext context,
  String message,
) {

  return showDialog<bool>(
    context: context,

    builder: (_) {
      return AlertDialog(
        title:
            const Text("Confirmation"),

        content: Text(message),

        actions: [

          TextButton(
            onPressed: () {
              Navigator.pop(
                context,
                false,
              );
            },

            child: const Text("No"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context,
                true,
              );
            },

            child: const Text("Yes"),
          ),
        ],
      );
    },
  );
}

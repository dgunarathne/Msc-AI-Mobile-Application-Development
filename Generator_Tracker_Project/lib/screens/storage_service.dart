import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class StorageService {

  static Future<void>
      saveGenerators(
    List<Map<String, dynamic>>
        generators,
  ) async {

    final prefs =
        await SharedPreferences
            .getInstance();

    await prefs.setString(
      "generators",
      jsonEncode(generators),
    );
  }

  static Future<List<dynamic>>
      loadGenerators() async {

    final prefs =
        await SharedPreferences
            .getInstance();

    String? data =
        prefs.getString(
      "generators",
    );

    if (data == null) {
      return [];
    }

    return jsonDecode(data);
  }
}

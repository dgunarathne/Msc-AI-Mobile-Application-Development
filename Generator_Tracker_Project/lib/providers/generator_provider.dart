import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/generator_model.dart';
import '../models/runtime_model.dart';
import '../models/fuel_model.dart';

class GeneratorProvider extends ChangeNotifier {

  List<GeneratorModel> generators = [];

  List<RuntimeModel> runtimes = [];

  List<FuelModel> fuels = [];

  Future<void> loadData() async {

    final prefs =
        await SharedPreferences.getInstance();

    final generatorData =
        prefs.getString('generators');

    if (generatorData != null) {

      final List decoded =
          jsonDecode(generatorData);

      generators =
          decoded.map((e) =>
              GeneratorModel.fromJson(e))
          .toList();
    }

    notifyListeners();
  }

  Future<void> saveGenerators() async {

    final prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      'generators',
      jsonEncode(
        generators
            .map((e) => e.toJson())
            .toList(),
      ),
    );
  }

  Future<void> addGenerator(
      GeneratorModel generator) async {

    generators.add(generator);

    await saveGenerators();

    notifyListeners();
  }

  Future<void> deleteGenerator(
      String id) async {

    generators.removeWhere(
      (e) => e.id == id,
    );

    await saveGenerators();

    notifyListeners();
  }

  Future<void> addRuntime(
      RuntimeModel runtime) async {

    runtimes.add(runtime);

    notifyListeners();
  }

  Future<void> addFuel(
      FuelModel fuel) async {

    fuels.add(fuel);

    notifyListeners();
  }
}

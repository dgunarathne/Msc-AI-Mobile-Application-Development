import 'package:flutter/material.dart';

class GeneratorProvider
    extends ChangeNotifier {

  List generators = [];

  List runtimes = [];

  List fuels = [];

  void addGenerator(generator) {
    generators.add(generator);
    notifyListeners();
  }

  void deleteGenerator(String id) {
    generators.removeWhere(
      (g) => g.id == id,
    );

    notifyListeners();
  }

  void addRuntime(runtime) {
    runtimes.add(runtime);
    notifyListeners();
  }

  void addFuel(fuel) {
    fuels.add(fuel);
    notifyListeners();
  }
}

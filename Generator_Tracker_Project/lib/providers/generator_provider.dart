
import 'package:flutter/material.dart';

class GeneratorProvider extends ChangeNotifier {
  final List<Map<String,dynamic>> generators = [];

  void addGenerator(String name,double fuel){
    generators.add({'name':name,'fuel':fuel});
    notifyListeners();
  }
}

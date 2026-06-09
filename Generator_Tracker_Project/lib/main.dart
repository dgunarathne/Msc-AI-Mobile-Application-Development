
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/generator_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => GeneratorProvider(),
      child: const GeneratorTrackerApp(),
    ),
  );
}

class GeneratorTrackerApp extends StatelessWidget {
  const GeneratorTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generator Tracker',
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}

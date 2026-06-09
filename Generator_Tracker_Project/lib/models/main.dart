import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/generator_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) =>
          GeneratorProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Generator Tracker",

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed:
            Colors.blue,
      ),

      home: const HomeScreen(),
    );
  }
}

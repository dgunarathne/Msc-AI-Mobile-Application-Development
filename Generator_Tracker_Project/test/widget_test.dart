
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:generator_tracker/main.dart';

void main() {

  testWidgets(
    'App Loads',
    (WidgetTester tester) async {

      await tester.pumpWidget(
        const MyApp(),
      );

      expect(
        find.text(
          'Generator Tracker',
        ),
        findsOneWidget,
      );
    },
  );
}

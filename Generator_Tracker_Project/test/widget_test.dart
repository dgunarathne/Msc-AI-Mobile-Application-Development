
import 'package:flutter_test/flutter_test.dart';
import 'package:generator_tracker/main.dart';

void main() {
  testWidgets('App loads', (tester) async {
    await tester.pumpWidget(const GeneratorTrackerApp());
    expect(find.text('Generator Tracker'), findsOneWidget);
  });
}

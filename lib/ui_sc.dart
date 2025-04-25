// File: test/ui_sc.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_product_ui/ui.dart';

void main() {
  testWidgets('Golden test for Product Recommendation UI', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AppUI(),
      ),
    );
    // above builds the ui widget
    await tester.pumpAndSettle();
    // await tester.pumpAndSettle() basically waits for images to finish
    await expectLater(
      find.byType(AppUI),
      matchesGoldenFile('product_recommendation_ui.png'),
    );

    // above basically just performs the test itself
  });
}


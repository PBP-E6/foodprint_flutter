import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:foodprint_flutter/main.dart';

void main() {
  testWidgets('Drawer lists every module', (WidgetTester tester) async {
    await tester.pumpWidget(const FoodPrintApp());

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();

    final drawer = find.byType(Drawer);
    expect(find.descendant(of: drawer, matching: find.text('Home')), findsOneWidget);
    for (final module in modules) {
      expect(find.descendant(of: drawer, matching: find.text(module.name)), findsOneWidget);
    }
  });

  testWidgets('Drawer opens the module page', (WidgetTester tester) async {
    await tester.pumpWidget(const FoodPrintApp());

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();
    await tester.tap(find.descendant(of: find.byType(Drawer), matching: find.text('Eco-Alternatives')));
    await tester.pumpAndSettle();

    expect(find.byType(Drawer), findsNothing);
    expect(find.text('Eco-Alternatives module goes here.'), findsOneWidget);
  });
}

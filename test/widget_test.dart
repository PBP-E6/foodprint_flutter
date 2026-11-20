import 'package:flutter_test/flutter_test.dart';

import 'package:foodprint_flutter/main.dart';

void main() {
  testWidgets('Home page shows module list', (WidgetTester tester) async {
    await tester.pumpWidget(const FoodPrintApp());

    expect(find.text('FoodPrint'), findsOneWidget);
    expect(find.text('Food Catalog'), findsOneWidget);
  });
}
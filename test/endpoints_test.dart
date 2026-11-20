import 'package:flutter_test/flutter_test.dart';

import 'package:foodprint_flutter/api/endpoints.dart';

void main() {
  test('Every module endpoint points to the PWS api', () {
    final endpoints = [
      Endpoints.foods,
      Endpoints.intake,
      Endpoints.goals,
      Endpoints.customMeals,
      Endpoints.ecoAlternatives,
    ];

    for (final url in endpoints) {
      expect(url, startsWith('https://ilham-naufal-foodprint.pws.cs.ui.ac.id/api/v1/'));
      expect(url, endsWith('/'));
    }
  });

  test('Detail endpoints add the id at the end', () {
    expect(Endpoints.food(3), '${Endpoints.foods}3/');
    expect(Endpoints.intakeLog(5), '${Endpoints.intake}5/');
    expect(Endpoints.goal(1), '${Endpoints.goals}1/');
    expect(Endpoints.customMeal(7), '${Endpoints.customMeals}7/');
    expect(Endpoints.ecoAlternative(2), '${Endpoints.ecoAlternatives}2/');
  });
}

import 'package:flutter/material.dart';
import 'screens/food_catalog_page.dart';
import 'screens/daily_intake_page.dart';
import 'screens/carbon_goals_page.dart';
import 'screens/custom_meals_page.dart';
import 'screens/eco_alternatives_page.dart';

void main() {
  runApp(const FoodPrintApp());
}

class FoodPrintApp extends StatelessWidget {
  const FoodPrintApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodPrint',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF31582B)),
        useMaterial3: true,
      ),
      home: const ModuleHomePage(),
    );
  }
}

class FoodPrintModule {
  const FoodPrintModule(this.name, this.description, this.icon, this.page);

  final String name;
  final String description;
  final IconData icon;
  final Widget page;
}

const modules = [
  FoodPrintModule(
    'Food Catalog',
    'Browse foods and their carbon emissions.',
    Icons.restaurant_menu,
    FoodCatalogPage(),
  ),
  
  FoodPrintModule(
    'Daily Intake Tracker',
    'Record meals and track their daily impact.',
    Icons.edit_note,
    DailyIntakePage(),
  ),
  
  FoodPrintModule(
    'Carbon Goals',
    'Set a daily emissions target and track progress.',
    Icons.flag_outlined,
    CarbonGoalsPage(),
  ),
  
  FoodPrintModule(
    'Custom Meals',
    'Build meals from foods in the catalog.',
    Icons.dinner_dining,
    CustomMealsPage(),
  ),
  
  FoodPrintModule(
    'Eco-Alternatives',
    'Share and discover lower-carbon food swaps.',
    Icons.eco_outlined,
    EcoAlternativesPage(),
  ),
];

class ModuleHomePage extends StatelessWidget {
  const ModuleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FoodPrint')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: modules.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 320,
          mainAxisExtent: 180,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final module = modules[index];
          return Card(
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (_) => module.page,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(module.icon, size: 32),
                    const Spacer(),
                    Text(
                      module.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(module.description),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ModulePage extends StatelessWidget {
  const ModulePage({super.key, required this.module});

  final FoodPrintModule module;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(module.name)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(module.icon, size: 48),
            const SizedBox(height: 12),
            Text('The ${module.name} module goes here.'),
          ],
        ),
      ),
    );
  }
}

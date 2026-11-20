import 'package:flutter/material.dart';

class FoodCatalogPage extends StatelessWidget {
  const FoodCatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food Catalog')),
      body: const Center(child: Text('Food Catalog module goes here.')),
    );
  }
}
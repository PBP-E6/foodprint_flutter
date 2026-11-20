import 'package:flutter/material.dart';

class CustomMealsPage extends StatelessWidget {
  const CustomMealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Meals')),
      body: const Center(child: Text('Custom Meals module goes here.')),
    );
  }
}
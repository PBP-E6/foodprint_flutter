import 'package:flutter/material.dart';

class CarbonGoalsPage extends StatelessWidget {
  const CarbonGoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carbon Goals')),
      body: const Center(child: Text('Carbon Goals module goes here.')),
    );
  }
}
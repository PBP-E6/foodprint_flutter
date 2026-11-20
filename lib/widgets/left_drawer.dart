import 'package:flutter/material.dart';

import '../main.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF31582B)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'FoodPrint',
                  style: TextStyle(
                    color: Color(0xFFFAF9F5),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Track the carbon footprint of your food.',
                  style: TextStyle(color: Color(0xFFEAF29D)),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
          for (final module in modules)
            ListTile(
              leading: Icon(module.icon),
              title: Text(module.name),
              onTap: () {
                // Tutup drawer dulu, lalu buka halaman modul.
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (_) => module.page),
                );
              },
            ),
        ],
      ),
    );
  }
}

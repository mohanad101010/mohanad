import 'package:flutter/material.dart';

class StaffHomeScreen extends StatelessWidget {
  const StaffHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final warehouseSummary = {
      'Laptops': 42,
      'Printers': 17,
      'Tablets': 8,
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Staff Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Warehouse Summary',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...warehouseSummary.entries.map((entry) => ListTile(
                  leading: const Icon(Icons.storage),
                  title: Text(entry.key),
                  trailing: Text('${entry.value} units'),
                )),
            const Divider(height: 32),
            const Text('Warehouse Actions (Mock)'),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                  label: const Text('Update Quantity'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('Add Item'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

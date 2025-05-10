import 'package:flutter/material.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mockStats = {
      'Total Devices': 132,
      'Pending Requests': 7,
      'Registered Students': 260,
      'Stock Alerts': 3,
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Overview',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...mockStats.entries.map((e) => ListTile(
                  leading: const Icon(Icons.insights),
                  title: Text(e.key),
                  trailing: Text(e.value.toString()),
                )),
            const Divider(height: 32),
            const Text('Admin Actions (Mock)'),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.person_add),
                  label: const Text('Add Staff'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.inventory),
                  label: const Text('Manage Inventory'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.security),
                  label: const Text('Grant Privileges'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

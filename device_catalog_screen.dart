import 'package:flutter/material.dart';

class DeviceCatalogScreen extends StatelessWidget {
  const DeviceCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mockDevices = [
      {'name': 'Dell Laptop', 'desc': 'Core i7, 16GB RAM'},
      {'name': 'MacBook Pro', 'desc': 'M2 Chip, 512GB SSD'},
      {'name': 'HP Printer', 'desc': 'LaserJet Pro 4001'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Device Catalog')),
      body: ListView.builder(
        itemCount: mockDevices.length,
        itemBuilder: (context, index) {
          final device = mockDevices[index];
          return ListTile(
            leading: const Icon(Icons.devices),
            title: Text(device['name']!),
            subtitle: Text(device['desc']!),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/request-device');
              },
              child: const Text('Request'),
            ),
          );
        },
      ),
    );
  }
}

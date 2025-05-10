import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mockOrders = [
      {'device': 'MacBook Pro', 'status': 'Approved', 'date': '2025-04-10'},
      {'device': 'HP Printer', 'status': 'Pending', 'date': '2025-05-02'},
      {'device': 'Dell Laptop', 'status': 'Rejected', 'date': '2025-05-05'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Order History')),
      body: ListView.builder(
        itemCount: mockOrders.length,
        itemBuilder: (context, index) {
          final order = mockOrders[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(order['device']!),
              subtitle: Text('Status: ${order['status']} | Date: ${order['date']}'),
              trailing: Icon(
                Icons.circle,
                color: order['status'] == 'Approved'
                    ? Colors.green
                    : order['status'] == 'Pending'
                        ? Colors.orange
                        : Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}

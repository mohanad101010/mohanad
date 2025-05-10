import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Order Summary',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const ListTile(
              title: Text('Device'),
              subtitle: Text('Dell Laptop - Core i7, 16GB RAM'),
              trailing: Text('\$999'),
            ),
            const Divider(),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Payment mock completed ✅'),
                    ),
                  );
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.payment),
                label: const Text('Confirm Payment (Mock)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

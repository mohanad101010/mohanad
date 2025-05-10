import 'package:flutter/material.dart';

class QRTrackingScreen extends StatelessWidget {
  const QRTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mockStatus = {
      'Device': 'MacBook Pro',
      'Tracking ID': 'IT-ORDER-3421',
      'Location': 'Warehouse A',
      'Status': 'In Transit',
      'ETA': '2025-05-12',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('QR Code Tracking')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(Icons.qr_code_2, size: 100, color: Colors.blue),
            ),
            const SizedBox(height: 20),
            ...mockStatus.entries.map((entry) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Text('${entry.key}: ',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Expanded(
                          child: Text(entry.value,
                              style: const TextStyle(fontSize: 16))),
                    ],
                  ),
                )),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('QR code scanned (mocked) ✅'),
                    ),
                  );
                },
                icon: const Icon(Icons.camera_alt),
                label: const Text('Simulate Scan'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

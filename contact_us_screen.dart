import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Need Help?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text('Email: support@univ-it-ksa.edu.sa'),
            const Text('Phone: +966 9200 12345'),
            const SizedBox(height: 24),
            const Text(
              'Send us a message (Mock):',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Type your message here...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Message sent (mocked) ✅')),
                  );
                },
                child: const Text('Send Message'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

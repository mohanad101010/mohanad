import 'package:flutter/material.dart';

class StaffLoginScreen extends StatelessWidget {
  const StaffLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staff Login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Mock Staff Login', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/staff-home');
                },
                child: const Text('Login as Staff'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

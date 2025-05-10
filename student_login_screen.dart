import 'package:flutter/material.dart';

class StudentLoginScreen extends StatelessWidget {
  const StudentLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Mock Student Login', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/student-home');
                },
                child: const Text('Login as Student'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

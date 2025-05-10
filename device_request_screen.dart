import 'package:flutter/material.dart';

class DeviceRequestScreen extends StatefulWidget {
  const DeviceRequestScreen({super.key});

  @override
  State<DeviceRequestScreen> createState() => _DeviceRequestScreenState();
}

class _DeviceRequestScreenState extends State<DeviceRequestScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController reasonController = TextEditingController();

  @override
  void dispose() {
    reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Request Device')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                'Why do you need this device?',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: reasonController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Reason',
                ),
                maxLines: 4,
                validator: (value) =>
                    value == null || value.isEmpty ? 'Enter a reason' : null,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Request Submitted ✅')),
                    );
                    Navigator.pop(context);
                  }
                },
                child: const Text('Submit Request'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

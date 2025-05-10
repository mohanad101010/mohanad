import 'package:flutter/material.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(const ITDeviceOrderingApp());
}

class ITDeviceOrderingApp extends StatelessWidget {
  const ITDeviceOrderingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Device Ordering',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: AppRoutes.roleSelector,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}

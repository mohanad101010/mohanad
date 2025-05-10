import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:it_device_ordering/main.dart';

void main() {
  testWidgets('App renders without crash', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ITDeviceOrderingApp());

    // Check that the role selector screen is shown.
    expect(find.text('Select Your Role'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsNWidgets(3));
  });
}

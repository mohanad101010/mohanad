import 'package:flutter/material.dart';

import '../auth/admin_login_screen.dart';
import '../auth/staff_login_screen.dart';
import '../auth/student_login_screen.dart';
import '../auth/role_selector_screen.dart';

import '../admin/admin_home_screen.dart';
import '../Staff/staff_home_screen.dart';
import '../Student/student_home_screen.dart';

import '../Student/device_catalog_screen.dart';
import '../Student/device_request_screen.dart';
import '../Student/checkout_screen.dart';
import '../Student/order_history_screen.dart';
import '../Student/contact_us_screen.dart';
import '../Student/qr_tracking_screen.dart';

class AppRoutes {
  static const String roleSelector = '/';

  static const String studentLogin = '/student-login';
  static const String staffLogin = '/staff-login';
  static const String adminLogin = '/admin-login';

  static const String studentHome = '/student-home';
  static const String staffHome = '/staff-home';
  static const String adminHome = '/admin-home';

  static const String deviceCatalog = '/device-catalog';
  static const String requestDevice = '/request-device';
  static const String checkout = '/checkout';
  static const String orderHistory = '/order-history';
  static const String contactUs = '/contact-us';
  static const String qrTracking = '/qr-tracking';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case roleSelector:
        return MaterialPageRoute(builder: (_) => const RoleSelectorScreen());

      case studentLogin:
        return MaterialPageRoute(builder: (_) => const StudentLoginScreen());
      case staffLogin:
        return MaterialPageRoute(builder: (_) => const StaffLoginScreen());
      case adminLogin:
        return MaterialPageRoute(builder: (_) => const AdminLoginScreen());

      case studentHome:
        return MaterialPageRoute(builder: (_) => const StudentHomeScreen());
      case staffHome:
        return MaterialPageRoute(builder: (_) => const StaffHomeScreen());
      case adminHome:
        return MaterialPageRoute(builder: (_) => const AdminHomeScreen());

      case deviceCatalog:
        return MaterialPageRoute(builder: (_) => const DeviceCatalogScreen());
      case requestDevice:
        return MaterialPageRoute(builder: (_) => const DeviceRequestScreen());
      case checkout:
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());
      case orderHistory:
        return MaterialPageRoute(builder: (_) => const OrderHistoryScreen());
      case contactUs:
        return MaterialPageRoute(builder: (_) => const ContactUsScreen());
      case qrTracking:
        return MaterialPageRoute(builder: (_) => const QRTrackingScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('404 - Route not found')),
          ),
        );
    }
  }
}

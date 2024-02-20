import 'package:flutter/material.dart';
import 'package:untitled/screens/landing_screen.dart';
import 'package:untitled/screens/payment_screen.dart';
import 'package:untitled/screens/payment_success_screen.dart';

class AppRoutes {
  static const LANDING_SCREEN = '/landing_screen';
  static const PAYMENT_SCREEN = '/payment_screen';
  static const PAYMENT_SUCCESS_SCREEN = '/payment_success_screen';

  static Map<String, WidgetBuilder> routes = {
    LANDING_SCREEN: (context) => LandingScreen(),
    PAYMENT_SCREEN: (context) => PaymentScreen(),
    PAYMENT_SUCCESS_SCREEN: (context) => PaymentSuccessScreen()
  };
}

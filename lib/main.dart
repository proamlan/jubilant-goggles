import 'package:flutter/material.dart';
import 'package:untitled/routes/AppRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Back to Details',
      debugShowMaterialGrid: false,
      initialRoute: AppRoutes.LANDING_SCREEN,
      routes: AppRoutes.routes,
    );
  }
}

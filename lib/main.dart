import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jubilant/home/home_screen.dart';
import 'package:jubilant/home/utils/colors.dart';

import 'checkout/swipe_to_pay.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
      statusBarIconBrightness: Brightness.dark // dark text for status bar
      ));
  runApp(const TapInvestApp());
}

class TapInvestApp extends StatelessWidget {
  const TapInvestApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent).copyWith(
          background: const Color(0xffFBFBF6),
          primary: kPrimaryColor,
        ),
        fontFamily: 'Inter',
        textTheme: const TextTheme(
            titleSmall: TextStyle(
              fontSize: 14,
              color: kPrimaryColor,
            ),
            bodyLarge: TextStyle(
                fontSize: 18,
                color: kPrimaryTextColor,
                fontWeight: FontWeight.w600),
            bodyMedium: TextStyle(
                fontSize: 16,
                color: kPrimaryTextColor,
                fontWeight: FontWeight.w600),
            bodySmall: TextStyle(fontSize: 14, color: kSecondaryTextColor),
            labelSmall: TextStyle(fontSize: 10, color: kSecondaryTextColor)),
        useMaterial3: true,
      ),
      home: SwipeToPay(),
    );
  }
}

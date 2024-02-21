import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/text_styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: primaryBodyLargeTextStyle(context));
  }
}

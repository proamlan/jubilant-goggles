
import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/colors.dart';

class Separator extends StatelessWidget {
  const Separator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 0.5,
      color: kDividerColor,
    );
  }
}

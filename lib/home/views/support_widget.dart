import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/text_styles.dart';

class SupportWidget extends StatelessWidget {
  final String title;
  final List<String> subTitles;
  SupportWidget({required this.title, required this.subTitles});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: primaryBodyLargeTextStyle(context)),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < subTitles.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 8, bottom: 8),
                  child: Image.asset(subTitles[i]),
                )
            ],
          )
        ],
      ),
    );
  }
}

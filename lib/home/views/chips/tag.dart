import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/colors.dart';
import 'package:jubilant/home/utils/text_styles.dart';

class TagWidget extends StatelessWidget {
  String title;
  bool isActive;

  TagWidget({required this.title, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    final textStyle = isActive
        ? secondaryLabelSmallTextStyle(context).copyWith(color: Colors.white)
        : secondaryLabelSmallTextStyle(context);
    return Container(
      margin: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
      decoration: BoxDecoration(
          color: isActive
              ? kTagBackgroundColorActive
              : kTagBackgroundColorInActive,
          borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}

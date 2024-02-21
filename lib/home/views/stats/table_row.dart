import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/colors.dart';
import 'package:jubilant/home/utils/text_styles.dart';

class StatsTableRow extends StatelessWidget {
  String title;
  String? valuePrefix;
  String value;
  String valueLabel;

  StatsTableRow({required this.title, this.valuePrefix, required this.value, required this.valueLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kTableBackgroundColor,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: secondaryLabelSmallTextStyle(context),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              if (valuePrefix != null && valuePrefix!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Text(
                    valuePrefix!,
                    style: tertiaryBodyMediumTextStyle(context),
                  ),
                ),
              Text(
                value,
                style: primaryBodyMediumTextStyle(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                valueLabel,
                style: tertiaryBodyMediumTextStyle(context),
              ),
            ],
          )
        ],
      ),
    );
  }
}

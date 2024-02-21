import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/colors.dart';
import 'package:jubilant/home/utils/text_styles.dart';
import 'package:jubilant/home/views/section_title.dart';

class OrgInfo extends StatelessWidget {
  const OrgInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 14.0),
      child: Column(
        children: [
          Row(
            children: [
              const SectionTitle(title: 'Agrizy'),
              const SizedBox(
                width: 4,
              ),
              const Icon(
                Icons.arrow_back,
                size: 24.0,
                color: kTertiaryTextColor,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'Keshav Industries',
                style: secondaryBodyLargeTextStyle(context),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 20,
          ),
          // companyStats(stats),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

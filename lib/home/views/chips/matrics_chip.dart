import 'package:flutter/material.dart';
import 'package:jubilant/home/model/tag.dart';
import 'package:jubilant/home/views/chips/tag.dart';
import 'package:jubilant/home/views/section_title.dart';
import 'package:jubilant/home/views/stats/stats_table.dart';

class MetricsChipGroup extends StatelessWidget {
  final List<Tag> tags = [
    Tag(title: 'FUNDING'),
    Tag(title: 'TRACTION'),
    Tag(title: 'FINANCIALS', isActive: true),
    Tag(title: 'COMPETITION')
  ];

  MetricsChipGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Key Metrics'),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 48,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: tags
                  .map((e) => TagWidget(title: e.title, isActive: e.isActive))
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

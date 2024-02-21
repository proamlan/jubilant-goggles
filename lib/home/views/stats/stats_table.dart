import 'package:flutter/material.dart';
import 'package:jubilant/home/model/company_stats.dart';
import 'package:jubilant/home/utils/colors.dart';
import 'package:jubilant/home/views/stats/table_row.dart';

class StatsTable extends StatelessWidget {
  List<List<CompanyStats>> stats;

  StatsTable({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Table(
        border: TableBorder.all(
            color: kTableBorderColor,
            borderRadius: BorderRadius.circular(8),
            width: 1),
        children: [
          for (int outerIndex = 0; outerIndex < stats.length; outerIndex++)
            TableRow(
                children: stats[outerIndex].map((e) {
              return StatsTableRow(
                  title: e.title,
                  valuePrefix: e.valuePrefix,
                  value: e.value,
                  valueLabel: e.valueLabel);
            }).toList()),
        ],
      ),
    );
  }
}

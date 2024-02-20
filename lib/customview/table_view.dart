import 'package:flutter/material.dart';

class StatsTableView extends StatelessWidget {
  const StatsTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TableItem(itemTitle: 'MIN INVST', value: '1 LAKH'),
                ),
                Expanded(
                  child: TableItem(itemTitle: 'MIN INVST', value: '1 LAKH'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TableItem extends StatelessWidget {
  TableItem({required this.itemTitle, required this.value});

  final String itemTitle;

  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          itemTitle,
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled/customview/outlined_button.dart';
import 'package:untitled/customview/table_view.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () {
            //TODO handle on click
          },
        ),
        automaticallyImplyLeading: true,
        title: const Text(
          'Back to Details',
          style: TextStyle(fontSize: 14.0, color: Colors.green),
        ),
      ),
      body: Column(
        children: [
          OutlineButton(),
          StatsTableView(),
        ],
      ),
    );
  }
}

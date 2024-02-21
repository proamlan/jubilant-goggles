
import 'package:flutter/material.dart';

class AgrizyAppBar extends StatelessWidget {

  final String title;

  AgrizyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.arrow_back,
              color: Theme.of(context).primaryColor,
              size: 24.0,
            ),
          ),
          Text(title, style: Theme.of(context).textTheme.titleSmall)
        ],
      ),
    );
  }
}

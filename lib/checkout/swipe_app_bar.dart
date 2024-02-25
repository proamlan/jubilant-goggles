import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/colors.dart';
import 'package:jubilant/home/utils/text_styles.dart';

class SwipeToPayAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: ClipOval(
              child: Material(
                color: Color(0x1f15803d),
                child: InkWell(
                  splashColor: Colors.green, // Splash color
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const SizedBox(
                      width: 56, height: 56, child: Icon(Icons.arrow_back)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Purchasing',
            style: TextStyle(color: Colors.black, fontSize: 27.0),
          ),
          Row(
            children: [
              Text('Agrizy', style: kSecondaryTextSmall(context)),
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
                style: kSecondaryTextSmall(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

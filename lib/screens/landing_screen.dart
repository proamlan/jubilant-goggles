import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/constants/colors.dart';
import 'package:untitled/constants/font.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'images/logo.svg',
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  "Agrizy ←",
                  style: kInterTextStyle.copyWith(color: kActiveTextColor),
                ),
                Text(
                  "Keshav Industries",
                  style: kInterTextStyle.copyWith(color: kStoneTextColor),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.',
              style: kInterTextStyle.copyWith(
                  fontSize: 14.0,
                  color: kStoneTextColor,
                  fontVariations: [
                    const FontVariation('wght', 400),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

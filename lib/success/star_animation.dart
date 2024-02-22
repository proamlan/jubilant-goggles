import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/text_styles.dart';

class SuccessAnimation extends StatelessWidget {
  const SuccessAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              const RoundedRect(),
              Image.asset('images/star.png'),
              Image.asset('images/tick.png')
            ],
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Payment Done",
                  style: primaryBodyMediumTextStyle(context)
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'You are almost there!',
                  style: secondPrimaryBodySmallTextStyle(context)
                      .copyWith(fontSize: 12.0, color: Colors.white),
                ),
                Text(
                  'Do not leave this page, or press the back button.',
                  maxLines: 1,
                  style: secondPrimaryBodySmallTextStyle(context).copyWith(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RoundedRect extends StatelessWidget {
  const RoundedRect({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xff116631),
        borderRadius: BorderRadius.circular(10), // Adjust the value as needed
      ),
    );
  }
}

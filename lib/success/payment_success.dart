import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/colors.dart';
import 'package:jubilant/success/rounded_rec.dart';
import 'package:jubilant/success/success_info.dart';
import 'package:lottie/lottie.dart';

class PaymentSuccessful extends StatefulWidget {
  const PaymentSuccessful({super.key});

  @override
  State<PaymentSuccessful> createState() => _PaymentSuccessfulState();
}

class _PaymentSuccessfulState extends State<PaymentSuccessful>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAnimationBackgroundColor,
      body: Stack(
        children: [
          Stack(children: [
            Image.asset('images/dot_background.png'),
            Container(
              alignment: Alignment.center,
              child: Lottie.asset(
                'assets/success_anim.json',
                animate: true,
                repeat: true,
              ),
            ),
            const Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100.0,
                ),
                Center(
                  child: RoundedRect(),
                ),
                SuccessInfo()
              ],
            )
          ]),

          // Container(color: kAnimationBackgroundColor, child: SuccessAnimation())
        ],
      ),
    );
  }
}

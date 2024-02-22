import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/colors.dart';
import 'package:jubilant/success/star_animation.dart';
import 'package:lottie/lottie.dart';

class PaymentSuccessful extends StatefulWidget {
  const PaymentSuccessful({super.key});

  @override
  State<PaymentSuccessful> createState() => _PaymentSuccessfulState();
}

class _PaymentSuccessfulState extends State<PaymentSuccessful>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this)..reset();
    _controller.addStatusListener((status) {
      print(status);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAnimationBackgroundColor,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Lottie.asset(
              'assets/success_anim.json',
              controller: _controller,
              onLoaded: (composition) {
                // Configure the AnimationController with the duration of the
                // Lottie file and start the animation.
                _controller
                  ..duration = composition.duration
                  ..forward();
              },
            ),
          ),
          Container(color: kAnimationBackgroundColor, child: SuccessAnimation())
        ],
      ),
    );
  }
}

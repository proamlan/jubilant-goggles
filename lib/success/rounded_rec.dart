import 'package:flutter/material.dart';

class RoundedRect extends StatefulWidget {
  const RoundedRect({super.key});

  @override
  State<RoundedRect> createState() => _RoundedRectState();
}

class _RoundedRectState extends State<RoundedRect>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  var isAnimationOver = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
    _animation = Tween(begin: 0.0, end: 2.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isAnimationOver = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isAnimationOver) {
      return Stack(alignment: Alignment.center, children: [
        Image.asset('images/green_box.png'),
        Image.asset('images/book.png'),
      ]);
    } else {
      return Stack(alignment: Alignment.center, children: [
        Image.asset('images/green_box.png'),
        RotationTransition(
          turns: _animation,
          child: Image.asset('images/star.png'),
        ),
        Image.asset('images/tick.png'),
      ]);
    }
  }
}

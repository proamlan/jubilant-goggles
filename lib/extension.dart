
import 'package:flutter/animation.dart';

extension AnimExtensions on AnimationController {
  repeatFor({required int times}) async {
    for (int i = 0; i < times; i++) await forward(from: 0);
    return;
  }
}

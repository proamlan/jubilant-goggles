import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/text_styles.dart';

class SuccessInfo extends StatefulWidget {
  const SuccessInfo({super.key});

  @override
  State<SuccessInfo> createState() => _SuccessInfoState();
}

class _SuccessInfoState extends State<SuccessInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Payment Done",
          style:
              primaryBodyMediumTextStyle(context).copyWith(color: Colors.white),
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
    );
  }
}

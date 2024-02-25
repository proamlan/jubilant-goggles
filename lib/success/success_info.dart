import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/text_styles.dart';

class SuccessInfo extends StatefulWidget {
  const SuccessInfo(
      {super.key,
      required this.titleText,
      required this.description,
      required this.description2});

  final String titleText;
  final String description;
  final String description2;

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
          widget.titleText,
          style:
              primaryBodyMediumTextStyle(context).copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          widget.description,
          style: secondPrimaryBodySmallTextStyle(context)
              .copyWith(fontSize: 12.0, color: Colors.white),
        ),
        Text(
          widget.description2,
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

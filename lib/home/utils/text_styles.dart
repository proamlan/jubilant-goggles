import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/colors.dart';


TextStyle primaryBodyLargeTextStyle(BuildContext context) {
  return Theme.of(context)
      .textTheme
      .bodyLarge!
      .copyWith(color: kPrimaryTextColor);
}

TextStyle secondaryBodyLargeTextStyle(BuildContext context) {
  return Theme.of(context)
      .textTheme
      .bodyLarge!
      .copyWith(color: kSecondaryTextColor);
}

TextStyle primaryBodyMediumTextStyle(BuildContext context) {
  return Theme.of(context)
      .textTheme
      .bodyMedium!
      .copyWith(color: kPrimaryTextColor);
}

TextStyle secondPrimaryBodySmallTextStyle(BuildContext context) {
  return Theme.of(context)
      .textTheme
      .bodySmall!
      .copyWith(color: kSecondPrimaryTextColor);
}

TextStyle secondaryBodySmallTextStyle(BuildContext context) {
  return Theme.of(context)
      .textTheme
      .bodySmall!
      .copyWith(color: kSecondaryTextColor);
}

TextStyle tertiaryBodyMediumTextStyle(BuildContext context) {
  return Theme.of(context)
      .textTheme
      .bodyMedium!
      .copyWith(color: kTertiaryTextColor);
}

TextStyle secondaryLabelSmallTextStyle(BuildContext context) {
  return Theme.of(context)
      .textTheme
      .labelSmall!
      .copyWith(color: kSecondaryTextColor);
}

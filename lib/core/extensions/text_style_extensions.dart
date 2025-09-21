import 'package:ecom/core/res/styles/colours.dart';
import 'package:flutter/material.dart';

extension TextStyleExt on TextStyle {
  TextStyle get orange => copyWith(color: Colours.orangeNormalHover);
  TextStyle get dark => copyWith(color: Colours.kcDarkGreyColor);
  TextStyle get grey => copyWith(color: Colours.greyLight);
  TextStyle get white => copyWith(color: Colours.whiteMSLight);
  TextStyle get primary => copyWith(color: Colours.blueNormalActive);
  TextStyle adaptiveColour(BuildContext context) =>
      copyWith(color: Colours.classicadaptiveTextColour(context));
}

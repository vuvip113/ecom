import 'package:ecom/core/extensions/text_style_extensions.dart';
import 'package:ecom/core/res/styles/colours.dart';
import 'package:ecom/core/res/styles/text.dart';
import 'package:flutter/material.dart';

class EcomlyLogo extends StatelessWidget {
  const EcomlyLogo({super.key, this.style});

  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Ecom',
        style: style ?? TextStyles.applogo.white,
        children: const [
          TextSpan(
            text: 'ly',
            style: TextStyle(color: Colours.blueNormalActive),
          ),
        ],
      ),
    );
  }
}

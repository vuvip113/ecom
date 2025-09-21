import 'package:ecom/core/extensions/text_style_extensions.dart';
import 'package:ecom/core/res/media.dart';
import 'package:ecom/core/res/styles/colours.dart';
import 'package:ecom/core/res/styles/text.dart';
import 'package:flutter/material.dart';

class OnBoardingInfoSection extends StatelessWidget {
  const OnBoardingInfoSection.first({super.key}) : first = true;
  const OnBoardingInfoSection.second({super.key}) : first = false;

  final bool first;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(first ? MediaRes.logo : MediaRes.casualReading),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            switch (first) {
              true => Text.rich(
                textAlign: TextAlign.left,
                TextSpan(
                  text: '${DateTime.now().year}\n',
                  style: AppTextStyles.headingBold.orange,
                  children: [
                    TextSpan(
                      text: 'Winter Sale is live now',
                      style: TextStyle(
                        color: Colours.classicadaptiveTextColour(context),
                      ),
                    ),
                  ],
                ),
              ),
              _ => Text.rich(
                textAlign: TextAlign.left,
                TextSpan(
                  text: 'Flash Sale\n',
                  style: AppTextStyles.headingBold.adaptiveColour(context),
                  children: [
                    const TextSpan(
                      text: "Men's ",
                      style: TextStyle(color: Colours.orangeDark),
                    ),
                    TextSpan(
                      text: "Shirts & Pant",
                      style: TextStyle(
                        color: Colours.classicadaptiveTextColour(context),
                      ),
                    ),
                  ],
                ),
              ),
            },
          ],
        ),
      ],
    );
  }
}

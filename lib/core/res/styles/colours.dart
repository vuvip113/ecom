import 'package:ecom/core/utils/core_utils.dart';
import 'package:flutter/material.dart';

abstract class Colours {
  static const greyIconsColor = Color(0xFFF3F3F3);
  static const orangeNormal = Color(0xFFF37748);
  static const greyButton = Color(0xFF4D4D4D);

  static const kcPrimaryColor = Color(0xFF9600FF);
  static const kcPrimaryColorDark = Color(0xFF300151);
  static const kcDarkGreyColor = Color(0xFF1A1B1E);
  static const kcMediumGrey = Color(0xFF474A54);
  static const kcLightGrey = Color(0xFFBBBBBB);
  static const kcVeryLightGrey = Color(0xFFE3E3E3);
  static const Color kcBackgroundColor = kcDarkGreyColor;

  //Orange
  static const orangeLight = Color(0xFFFEF1ED);
  static const orangeLightHover = Color(0xFFFDEBE4);
  static const orangeLightActive = Color(0xFFFBD5C6);
  static const orangeNormalHover = Color(0xFFDB6B41);
  static const orangeNormalActive = Color(0xFFC25F3A);
  static const orangeDark = Color(0xFFB65936);
  static const orangeDarkHover = Color(0xFF92472B);
  static const orangeDarkActive = Color(0xFF6D3620);
  static const orangeDarker = Color(0xFF552319);

  //Purple
  static const purpleLight = Color(0xFFFEFEFF);
  static const Color purpleLightHover = purpleLight;
  static const purpleLightActive = Color(0xFFFDFCFF);
  static const purpleNormal = Color(0xFFF7F6FE);
  static const purpleNormalHover = Color(0xFFDEDDE5);
  static const purpleNormalActive = Color(0xFFC6C5CB);
  static const purpleDark = Color(0xFFB9B9BF);
  static const purpleDarkHover = Color(0xFF949498);
  static const purpleDarkActive = Color(0xFF6F6F72);
  static const purpleDarker = Color(0xFF565659);

  //White
  static const whiteNormalHover = Color(0xFFE6E6E6);
  static const whiteNormalActive = Color(0xFFCCCCCC);
  static const whiteDark = Color(0xFFBFBFBF);
  static const whiteDarkHover = Color(0xFF999999);
  static const whiteDarkActive = Color(0xFF737373);
  static const whiteDarker = Color(0xFF595959);

  //White multiple select
  static const whiteMSLight = Color(0xFFFBFBFB);
  static const whiteMSLightHover = Color(0xFFF9F9F9);
  static const whiteMSLightActive = Color(0xFFF3F3F3);
  static const whiteMSNormal = Color(0xFFD9D9D9);
  static const whiteMSNormalHover = Color(0xFFC3C3C3);
  static const whiteMSNormalActive = Color(0xFFAEAEAE);
  static const whiteMSDark = Color(0xFFA3A3A3);
  static const whiteMSDarkHover = Color(0xFF828282);
  static const whiteMSDarkActive = Color(0xFF626262);
  static const whiteMSDarker = Color(0xFF4C4C4C);

  //Grey

  static const greyLight = Color(0xFFEFEFF0);
  static const greyLightHover = Color(0xFFE7E7E8);
  static const greyLightActive = Color(0xFFCCCDCF);
  static const greyNormal = Color(0xFF5C5E64);
  static const greyNormalHover = Color(0xFF53555A);
  static const greyNormalActive = Color(0xFF4A4B50);
  static const greyDark = Color(0xFF45474B);
  static const greyDarkHover = Color(0xFF37383C);
  static const greyDarkActive = Color(0xFF292A2D);
  static const greyDarker = Color(0xFF202123);

  //Blue
  static const blueLight = Color(0xFFF8FAFC);
  static const blueLightHover = Color(0xFFF5F7FB);
  static const blueLightActive = Color(0xFFEBEFF6);
  static const blueNormal = Color(0xFFBDCBE2);
  static const blueNormalHover = Color(0xFFAAB7CB);
  static const blueNormalActive = Color(0xFF97A2B5);
  static const blueDark = Color(0xFF8E98AA);
  static const blueDarkHover = Color(0xFF717A88);
  static const blueDarkActive = Color(0xFF555B66);
  static const blueDarker = Color(0xFF42474F);

  //Red
  static const redLight = Color(0xFFFEEDED);
  static const redLightHover = Color(0xFFFDE4E4);
  static const redLightActive = Color(0xFFFCC7C7);
  static const redNormal = Color(0xFFF44A4A);
  static const redNormalHover = Color(0xFFDC4343);
  static const redNormalActive = Color(0xFFC33B3B);
  static const redDark = Color(0xFFB73838);
  static const redDarkHover = Color(0xFF922C2C);
  static const redDarkActive = Color(0xFF6E2121);
  static const redDarker = Color(0xFF551A1A);

  // ====== login =========
  static const textWelcomeLogin = Color(0x9954595E);
  static const lightColorLogin = Color(0xFF718096);
  static const lightColor2Login = Color(0xFF98A6AD);
  static const blueNormalLogin = Color(0xFF1877F2);

  static Color classicadaptiveTextColour(BuildContext context) =>
      CoreUtils.adaptiveColour(
        context,
        lightModeColour: greyDarker,
        darkModeColour: whiteMSLightActive,
      );
}

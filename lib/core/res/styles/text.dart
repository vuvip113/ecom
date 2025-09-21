import 'package:flutter/widgets.dart';

abstract class AppTextStyles {
  static const TextStyle headingBold = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static const TextStyle headingBold1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.5,
  );

  static const TextStyle headingRegular = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const TextStyle appLogo = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
  );
}

abstract class TextStyles {
  static const TextStyle applogo = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
  );
}

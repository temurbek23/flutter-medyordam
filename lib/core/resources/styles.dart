import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

abstract class Styles {
  Styles._();

  static TextStyle getButtonStyle() => const TextStyle(
        color: AppColors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: "Gilroy",
      );
  static TextStyle getInfoStyle() => const TextStyle(
    color: AppColors.C_6A6D7C,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: "Gilroy",
  );

  static TextStyle getTextStyle({
    Color color = AppColors.black,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w500,
    double? letterSpacing,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: "Gilroy",
        letterSpacing: letterSpacing,
        height: height,
      );
}

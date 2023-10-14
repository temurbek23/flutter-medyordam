import 'package:flutter/material.dart';

class AppColors {
  //General
  static const Color primaryColor = Color(0xFF37BD6B);
  static const Color primaryColorAccent = Color(0xFFD9F5DF);
  static const Color primaryColorDark = Color(0xFF0059B5);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color green = Color(0xFF13C1B7);
  static const Color transparent = Colors.transparent;

  static const Color inputColor = Color(0xFFF5F6F5);
  static const Color backgroundColor = Color(0xFFDCDDDF);
  static const Color searchColor = Color(0xFFF2F3F2);
  static const Color grey = Color(0xFF6A6D7C);

  static const Color C999999 = Color(0xFF999999);
  static const Color C_CACACA = Color(0xFFCACACA);
  static const Color C_6A6D7C = Color(0xFF6A6D7C);
  static const Color C_797979 = Color(0xFF797979);
  static const Color C_D9D9D9 = Color(0xFFD9D9D9);
  static const Color C_95999D = Color(0xFF95999D);
  static const Color C_F5F7F9 = Color(0xFFF5F7F9);
  static const Color C_595D6E = Color(0xFF595D6E);
  static const Color C_F6F7F6= Color(0xFFF6F7F6);
  static const Color C_F5F5F5= Color(0xFFF5F5F5);
  static const Color borderColor = Color(0xFFE6E8E8);
  static const Color homeCol = Color(0xFFF6F6F6);
  static const Color cancel = Color(0xFFAFB1B9);

  static const Color C_171215 = Color(0xFF171215);
  static const Color C_8B8B8B = Color(0xFF8B8B8B);
  static const Color C_F4F4F4 = Color(0xFFF4F4F4);
  static const Color textColor = Color(0xFF171215);
  static const Color switchColor = Color(0xFFE9E9EA);
  static const Color  access = Color(0xFF2F3E4A);

  static const Color cardColor = Color(0xFFEDEEED);
  static const Color card = Color(0xFF1C242B);

  static const Color danger = Color(0xFFFF4D4D);
  static const Color removeColor = Color(0xFFFF002E);
  static const Color blue = Color(0xFF0152BC);

  static const Color shimmerAnimate = Color(0xFF383838);
  static const Color shimmerAnimateLight = Color(0xFFDFDFDF);
  static const Color shimmerAnimatePrimaryLight = Color(0xFFDDECFF);

  static const Color shimmerBack = Color(0xFF292929);
  static const Color shimmerBackLight = Color(0xFFFFFFFF);

  static Color getTextFieldColor({bool isDark = false}){
    return isDark ? Color(0xFF36353D) : Color(0xFFEDEEED).withOpacity(0.5);
  }

  static Color getColorByName(String color) {
    switch (color.toUpperCase()) {
      case "BLUE":
        return const Color(0xFF0094FF);
      case "BLACK":
        return const Color(0xFF000000);
      case "PINK":
        return const Color(0xFFFF3C99);
      case "GREEN":
        return const Color(0xFF00FF57);
      case "RED":
        return const Color(0xFFFF002E);
      case "ORANGE":
        return const Color(0xFFFF9C40);
      case "YELLOW":
        return const Color(0xFFFFEC40);
      case "VIOLET":
        return const Color(0xFF9919D6);
      case "WHITE":
        return const Color(0xFFFFFFFF);
      case "GRAY":
        return const Color(0xFF939393);
    }

    return const Color(0xFFFFFFFF);
  }
}

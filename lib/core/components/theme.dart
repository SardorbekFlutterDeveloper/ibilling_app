import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/constants.dart';

class Theme {
  static ThemeData themeData = ThemeData(
    fontFamily: "Main",
    colorScheme: ColorScheme.light(
      // primary: ColorConst.kPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Contsants.appBarColor,
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.white
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:playmusic/utils/colors_resources.dart';

class CustomTheme {
  ThemeData darkTheme = ThemeData(
      splashColor: ColorResource.splashColor,
      scaffoldBackgroundColor: ColorResource.primaryColor,
      primaryColor: ColorResource.primaryColor,
      appBarTheme:
          const AppBarTheme(backgroundColor: ColorResource.primaryColor));
}

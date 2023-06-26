import 'dart:ui';
import 'package:flutter/material.dart';

class ThemeColor {
  static const Color white = Color(0xffffffff);
  static const Color secondaryGrey = Color(0xffF1F3F4);
  static const Color secondaryMediumGrey = Color(0xff0000004D);
  static const Color primaryBlack = Color(0xff141915);
  static const Color secondaryDarkGrey = Color(0xff606260);
  static const Color primaryDarkGrey = Color(0xff414141);
  static const Color primaryBlue = Color(0xFF2E2739);
  static const Color primaryGreen = Color(0xff5EBE4E);
  static const Color primaryGrey = Colors.grey;
  static const Color secondaryBlack = Color(0xff2B2F2C);
  static const Color secondaryRed = Color(0xffE2173A);
  static const Color primaryShadowGrey = Color(0xffBABABA);
  static const Color primaryYellow = Color(0xffE2B317);
  static const Color gradient1 = Color(0xFF2E2739);
  static const Color gradient2 = Color(0xFF49BEE8);
  static Color tabsBackground = Color(0xff239DD1);

  ThemeData get themeData {
    ColorScheme colorSchemeMovieApp = const ColorScheme(
      // primary green
      primary: Color(0xff2E2739),
      // primary blue
      primaryVariant: Color(0xff239DD1),
      // gradient 1
      surface: Color(0xff2E2739),
      // gradient 2
      background: Color(0xffF1F3F4),
      // secondary grey
      //secondary: Color(0xffF1F3F4),
      secondary: Color(0xff2E2739),
      // secondary dark grey
      secondaryVariant: Color(0xff606260),
      // secondary red
      error: Color(0xffE2173A),
      // primary green
      onPrimary: Color(0xFFFFFFFF),
      // primary blue
      onSecondary: Color(0xff239DD1),
      // secondary grey
      onSurface: Color(0xff2E2739),
      // secondary dark grey
      onBackground: Color(0xff606260),
      // secondary red
      onError: Color(0xffE2173A),
      // white
      brightness: Brightness.light,
    );

    return ThemeData.from(colorScheme: colorSchemeMovieApp);
  }
}

class AppTheme {
  AppTheme._();

  static const String appFontName = 'Roboto';

  // Font Size
  static const double smallest = 7;

  static const double veryverysmall = 8;
  static const double verySmall = 10;
  static const double small = 12;
  static const double medium = 14;
  static const double medium_1 = 16;
  static const double large = 18;
  static const double large_1 = 20;
  static const double extraLarge = 22;
  static const double doubleExtraLarge = 24;
  static const double authTitle = 25.5;
  static const double errorSize = 14;
  static const double largeTitleSize = 32;
  static const double mediumTitleSize = 30;
  static const double verylarge = 28;
  static const double twenty = 20;
  static const double thirtee = 30;
  static const double sixx = 60;
}

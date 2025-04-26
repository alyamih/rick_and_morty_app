import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/app/theme/app_colors.dart';
import 'package:rick_and_morty_app/app/theme/app_values.dart';

class AppTheme {
  final AppColors chosenColor;

  AppTheme(this.chosenColor);

  ThemeData getTheme() {
    final sizes = AppValues();

    return ThemeData(
      scaffoldBackgroundColor: chosenColor.backgroundColor,
      colorScheme: ColorScheme.fromSeed(
        onPrimary: chosenColor.whiteColor,
        seedColor: chosenColor.primaryColor,
        primary: chosenColor.primaryColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: chosenColor.backgroundColor,
        foregroundColor: chosenColor.backgroundColor,
        titleTextStyle: TextStyle(
          fontSize: sizes.appBarText,
          color: chosenColor.blackColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: chosenColor.backgroundColor,
        selectedItemColor: chosenColor.blackColor,
        unselectedItemColor: chosenColor.blackColor,
      ),
      textTheme: TextTheme(
        bodySmall: TextStyle(
          color: chosenColor.textColor,
          fontSize: sizes.smallText,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: chosenColor.textColor,
          fontSize: sizes.normalText,
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          color: chosenColor.textColor,
          fontSize: sizes.largeText,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

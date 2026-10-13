import 'package:coffeeshop/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final AppColors appColors = AppColors();


  static ThemeData get lightTheme {
    return ThemeData(
        useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        brightness: Brightness.light,
        background: AppColors.backgroundLightColor,
      ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: AppColors.textButtonLightColor,
              backgroundColor: AppColors.backgroundButtonLightColor,
            )
        ),
      textTheme:  TextTheme(
        titleLarge: TextStyle(
            color: AppColors.textLightColor,
            fontWeight: FontWeight.bold,
            fontFamily: "GoogleSan",
            fontSize: 24,
            fontFamilyFallback: ["KhmerNotoSerif"]
        ),
        bodyLarge: TextStyle(
            color: AppColors.textLightColor

        ),
        bodyMedium: TextStyle(color: AppColors.textLightColor),
        bodySmall: TextStyle(color: AppColors.textLightColor),
      ),

    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColorDark,
          brightness: Brightness.dark,
          background: AppColors.backgroundDarkColor,
        ),
        // Color Text Dark
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: AppColors.textButtonDarkColor,
              backgroundColor: AppColors.backgroundButtonDarkColor,
            )
        ),
      textTheme:  TextTheme(
        bodyLarge: TextStyle(

            color: AppColors.textDarkColor
        ),
        bodyMedium: TextStyle(color: AppColors.textDarkColor),
        bodySmall: TextStyle(color: AppColors.textDarkColor),
      )

    );
  }

  get textTheme => null;
}
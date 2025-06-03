import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

TextStyle _pretendardStyle({
  required double size,
  required FontWeight weight,
  required double height,
  required Color color,
}) {
  return TextStyle(
    fontFamily: 'Pretendard',
    fontSize: size.sp,
    fontWeight: weight,
    height: height.sp / size.sp,
    color: color,
  );
}

TextTheme _buildTextTheme(
    Color primary, Color secondary, Color gray600, Color gray700, Color white) {
  return TextTheme(
    displayLarge: _pretendardStyle(
        size: 24, weight: FontWeight.bold, height: 30, color: primary), // H1
    headlineLarge: _pretendardStyle(
        size: 20,
        weight: FontWeight.bold,
        height: 26,
        color: primary), // H1(20)
    headlineMedium: _pretendardStyle(
        size: 18, weight: FontWeight.bold, height: 24, color: primary), // H2
    titleLarge: _pretendardStyle(
        size: 16,
        weight: FontWeight.bold,
        height: 24,
        color: primary), // Subtitle1
    titleMedium: _pretendardStyle(
        size: 16,
        weight: FontWeight.w600,
        height: 24,
        color: primary), // Subtitle2
    bodyLarge: _pretendardStyle(
        size: 16,
        weight: FontWeight.normal,
        height: 24,
        color: primary), // Body1
    bodyMedium: _pretendardStyle(
        size: 14,
        weight: FontWeight.normal,
        height: 20,
        color: primary), // Body2
    bodySmall: _pretendardStyle(
        size: 14,
        weight: FontWeight.normal,
        height: 20,
        color: gray600), // Body3
    labelLarge: _pretendardStyle(
        size: 18, weight: FontWeight.bold, height: 24, color: white), // Button1
    labelMedium: _pretendardStyle(
        size: 12,
        weight: FontWeight.w600,
        height: 18,
        color: gray700), // Caption1
    labelSmall: _pretendardStyle(
        size: 12,
        weight: FontWeight.normal,
        height: 18,
        color: gray700), // Caption2
  );
}

ThemeData _buildTheme({
  required Brightness brightness,
  required Color primary,
  required Color onPrimary,
  required Color secondary,
  required Color onSecondary,
  required Color error,
  required Color onError,
  required Color background,
  required Color onBackground,
  required Color surface,
  required Color onSurface,
  required Color gray600,
  required Color gray700,
  required Color white,
  required Color appBarBg,
  required Color appBarIcon,
  required Color appBarTitle,
  required Color buttonBackground,
  required Color buttonBorder,
}) {
  return ThemeData(
    useMaterial3: true,
    fontFamily: 'Pretendard',
    colorScheme: ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      error: error,
      onError: onError,
      surface: surface,
      onSurface: onSurface,
      surfaceContainer: buttonBackground, // 버튼 back
      outline: buttonBorder, // 버튼 border
    ),
    scaffoldBackgroundColor: background,
    textTheme:
        _buildTextTheme(onBackground, onBackground, gray600, gray700, white),
    appBarTheme: AppBarTheme(
      backgroundColor: appBarBg,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: appBarIcon),
      titleTextStyle: _pretendardStyle(
          size: 20, weight: FontWeight.bold, height: 26, color: appBarTitle),
    ),
  );
}

class AppTheme {
  static ThemeData get lightTheme => _buildTheme(
        brightness: Brightness.light,
        primary: AppColors.dayBlue,
        onPrimary: AppColors.black,
        secondary: AppColors.dayPink,
        onSecondary: AppColors.gray600,
        error: AppColors.error,
        onError: AppColors.white,
        background: AppColors.white,
        onBackground: AppColors.black,
        surface: AppColors.gray100,
        onSurface: AppColors.black,
        gray600: AppColors.gray600,
        gray700: AppColors.gray700,
        white: AppColors.white,
        appBarBg: AppColors.white,
        appBarIcon: AppColors.black,
        appBarTitle: AppColors.black,
        buttonBackground: AppColors.white.withOpacity(0.3),
        buttonBorder: AppColors.white.withOpacity(0.6),
      );

  static ThemeData get darkTheme => _buildTheme(
        brightness: Brightness.dark,
        primary: AppColors.nightNavy,
        onPrimary: AppColors.white,
        secondary: AppColors.nightBlueGray,
        onSecondary: AppColors.black,
        error: AppColors.error,
        onError: AppColors.white,
        background: AppColors.gray700,
        onBackground: AppColors.white,
        surface: AppColors.gray600,
        onSurface: AppColors.white,
        gray600: AppColors.gray200,
        gray700: AppColors.gray200,
        white: AppColors.nightBlueGray,
        appBarBg: AppColors.gray700,
        appBarIcon: AppColors.white,
        appBarTitle: AppColors.white,
        buttonBackground: AppColors.gray300.withOpacity(0.3),
        buttonBorder: AppColors.gray300.withOpacity(0.6),
      );

  static TextStyle navTextStyle({
    required Color color,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.w400,
    double height = 1.50,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontFamily: 'Pretendard',
      fontWeight: fontWeight,
      height: height,
    );
  }

  static TextStyle get navLabel => navTextStyle(
        color: AppColors.gray400,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.50,
      );

  static TextStyle get navLabelSelected => navTextStyle(
        color: AppColors.gray600,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.50,
      );

  static TextStyle customText({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
    double? height,
  }) {
    return TextStyle(
      fontFamily: 'Pretendard',
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: color,
      height: height != null ? height / fontSize : null,
    );
  }
}

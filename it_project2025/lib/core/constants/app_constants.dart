import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';

class AppConstants {
  // nav icon
  static const String iconHome = 'assets/icons/ic-nav-home.svg';
  static const String iconCalendar = 'assets/icons/ic-nav-calendar.svg';
  static const String iconDiary = 'assets/icons/ic-nav-diary.svg';
  static const String iconMyPage = 'assets/icons/ic-nav-my.svg';

  // nav label
  static const String labelHome = '홈';
  static const String labelCalendar = '캘린더';
  static const String labelDiary = '비행일기';
  static const String labelMyPage = '마이';

  // nav route
  static const String routeHome = '/home';
  static const String routeCalendar = '/calendar';
  static const String routeDiary = '/diary';
  static const String routeMyPage = '/mypage';

  // design screen size (390*844)
  static const double designScreenWidth = 390.0;
  static const double designScreenHeight = 844.0;

  // nav bar
  static const double _navBarWidth = 358;
  static const double _navBarHeight = 62;
  static const double _navBarBorderRadius = 20;
  static const double _navItemWidth = 46;
  static const double _navItemHeight = 46;
  static const double _navIconSize = 24;
  static const double _navFontSize = 12;
  static const double _navTextHeight = 1.50;
  static const double _navSpacing = 2;
  static const double _navItemSpacing = 34;
  static const double _navMarginHorizontal = 20;
  static const double _navMarginVertical = 9;
  static const double _navPaddingHorizontal = 39;
  static const double _navPaddingVertical = 9;
  static const double _navShadowBlur = 20;

  // ScreenUtil 적용된 반응형 getter들
  static double get navBarWidth => _navBarWidth.w;
  static double get navBarHeight => _navBarHeight.h;
  static double get navBarBorderRadius => _navBarBorderRadius.r;
  static double get navItemWidth => _navItemWidth.w;
  static double get navItemHeight => _navItemHeight.h;
  static double get navIconSize => _navIconSize.r;
  static double get navFontSize => _navFontSize.sp;
  static double get navTextHeight => _navTextHeight;
  static double get navSpacing => _navSpacing.h;
  static double get navItemSpacing => _navItemSpacing.w;
  static double get navMarginHorizontal => _navMarginHorizontal.w;
  static double get navMarginVertical => _navMarginVertical.h;
  static double get navPaddingHorizontal => _navPaddingHorizontal.w;
  static double get navPaddingVertical => _navPaddingVertical.h;
  static double get navShadowBlur => _navShadowBlur.r;

  // common
  static double get commonPadding => 16.w;
  static double get smallPadding => 8.w;
  static double get largePadding => 24.w;
  static double get extraLargePadding => 32.w;

  static double get commonMargin => 16.w;
  static double get smallMargin => 8.w;
  static double get largeMargin => 24.w;

  static double get borderRadius => 12.r;
  static double get smallBorderRadius => 8.r;
  static double get largeBorderRadius => 20.r;

  static double get iconSizeSmall => 16.r;
  static double get iconSizeMedium => 24.r;
  static double get iconSizeLarge => 32.r;
  static double get iconSizeXLarge => 48.r;
}

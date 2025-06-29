import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';

class AppConstants {
  // icons
  static const String iconHome = 'assets/icons/ic-nav-home.svg';
  static const String iconCalendar = 'assets/icons/ic-nav-calendar.svg';
  static const String iconDiary = 'assets/icons/ic-nav-diary.svg';
  static const String iconMyPage = 'assets/icons/ic-nav-my.svg';
  static const String iconArrow = 'assets/icons/ic-arrow.svg';
  static const String iconClock = 'assets/icons/ic-clock.svg';
  static const String iconBeach = 'assets/icons/ic-Beach.svg';
  static const String iconOneWay = 'assets/icons/ic-oneway.svg';
  static const String iconTwoWay = 'assets/icons/ic-twoway.svg';

  // images
  static const String imageDiary = 'assets/images/img-diary.png';

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

  // home screen
  static const double _homeScreenPaddingTop = 46;
  static const double _homeScreenPaddingBottom = 140;
  static const List<double> _homeScreenGradients = [0.0, 0.15, 1.0];

  // home screen getter
  static double get homeScreenPaddingTop => _homeScreenPaddingTop.h;
  static double get homeScreenPaddingBottom => _homeScreenPaddingBottom.h;
  static List<double> get homeScreenGradients => _homeScreenGradients;

  // common
  static double get commonWidth => 342.w;
  static double get commonHeight => 50.h;

  static double get commonPaddingHorizontal => 16.w;
  static double get commonPaddingVertical => 16.h;
  static double get smallPaddingHorizontal => 8.w;
  static double get smallPaddingVertical => 8.h;
  static double get largePaddingHorizontal => 24.w;
  static double get largePaddingVertical => 24.h;
  static double get extraLargePaddingHorizontal => 32.w;
  static double get extraLargePaddingVertical => 32.h;
  static double get mediumPaddingHorizontal => 10.w;
  static double get mediumPaddingVertical => 10.h;
  static double get extraSmallPaddingHorizontal => 6.w;
  static double get extraSmallPaddingVertical => 6.h;

  static double get borderRadius => 12.r;
  static double get smallBorderRadius => 8.r;
  static double get largeBorderRadius => 20.r;

  static double get iconSizeSmall => 16.r;
  static double get iconSizeXLarge => 70.r;

  // card styles
  static const double _cardBorderRadius = 30;
  static const double _cardMarginHorizontal = 24;
  static const double _cardPaddingHorizontal = 30;
  static const double _cardPaddingVertical = 22;
  static const double _cardShadowBlur = 10;
  static const double _cardFlagWidth = 28;
  static const double _cardFlagHeight = 14;

  static double get cardBorderRadius => _cardBorderRadius.r;
  static double get cardMarginHorizontal => _cardMarginHorizontal.w;
  static double get cardPaddingHorizontal => _cardPaddingHorizontal.w;
  static double get cardPaddingVertical => _cardPaddingVertical.h;
  static double get cardShadowBlur => _cardShadowBlur.r;
  static double get cardFlagWidth => _cardFlagWidth.w;
  static double get cardFlagHeight => _cardFlagHeight.h;

  // button styles
  static const double _buttonBorderRadius = 24;
  static const double _buttonIconSize = 28;
  static const double _buttonPaddingHorizontal = 24;
  static const double _buttonPaddingVertical = 11;
  static const double _navigateToDiaryButtonHeight = 152;

  static double get buttonBorderRadius => _buttonBorderRadius.r;
  static double get buttonIconSize => _buttonIconSize.r;
  static double get buttonPaddingHorizontal => _buttonPaddingHorizontal.w;
  static double get buttonPaddingVertical => _buttonPaddingVertical.h;
  static double get navigateToDiaryButtonHeight =>
      _navigateToDiaryButtonHeight.h;
}

import '../constants/app_constants.dart';

enum AppTab {
  home(0, AppConstants.labelHome, AppConstants.iconHome),
  calendar(1, AppConstants.labelCalendar, AppConstants.iconCalendar),
  diary(2, AppConstants.labelDiary, AppConstants.iconDiary),
  mypage(3, AppConstants.labelMyPage, AppConstants.iconMyPage);

  const AppTab(this.tabIndex, this.label, this.iconPath);

  final int tabIndex;
  final String label;
  final String iconPath;

  static AppTab fromIndex(int index) {
    return AppTab.values.firstWhere((tab) => tab.tabIndex == index);
  }

  String get route {
    switch (this) {
      case AppTab.home:
        return AppConstants.routeHome;
      case AppTab.calendar:
        return AppConstants.routeCalendar;
      case AppTab.diary:
        return AppConstants.routeDiary;
      case AppTab.mypage:
        return AppConstants.routeMyPage;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_tab.dart';
import '../constants/app_constants.dart';
import '../theme/app_colors.dart';
import '../theme/app_theme.dart';

class NavBar extends StatelessWidget {
  final AppTab currentTab;
  final ValueChanged<AppTab> onTabTapped;

  const NavBar({
    super.key,
    required this.currentTab,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: AppConstants.navBarWidth,
        height: AppConstants.navBarHeight,
        margin: EdgeInsets.symmetric(
          horizontal: AppConstants.navMarginHorizontal,
          vertical: AppConstants.navMarginVertical,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.navPaddingHorizontal,
          vertical: AppConstants.navPaddingVertical,
        ),
        decoration: ShapeDecoration(
          color: AppColors.gray100,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(AppConstants.navBarBorderRadius),
          ),
          shadows: [
            BoxShadow(
              color: AppColors.shadowLight,
              blurRadius: AppConstants.navShadowBlur,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: AppTab.values.map(_buildNavItem).toList(),
        ),
      ),
    );
  }

  Widget _buildNavItem(AppTab tab) {
    final isSelected = currentTab == tab;

    return GestureDetector(
      onTap: () => onTabTapped(tab),
      child: SizedBox(
        width: AppConstants.navItemWidth,
        height: AppConstants.navItemHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: AppConstants.navIconSize,
              height: AppConstants.navIconSize,
              child: SvgPicture.asset(
                tab.iconPath,
                colorFilter: ColorFilter.mode(
                  isSelected ? AppColors.gray600 : AppColors.gray400,
                  BlendMode.srcIn,
                ),
              ),
            ),
            SizedBox(height: AppConstants.navSpacing),
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  tab.label,
                  textAlign: TextAlign.center,
                  style: isSelected
                      ? AppTheme.navLabelSelected
                      : AppTheme.navLabel,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

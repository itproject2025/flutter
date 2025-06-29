import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_theme.dart';

class NavigateToCalendarButton extends StatelessWidget {
  final VoidCallback onTap;

  const NavigateToCalendarButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppConstants.commonWidth,
        height: AppConstants.commonHeight,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(AppConstants.buttonBorderRadius),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppConstants.buttonPaddingHorizontal,
              vertical: AppConstants.buttonPaddingVertical),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '캘린더에서 이번 달 비행일정 추가하기',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              SvgPicture.asset(
                AppConstants.iconArrow,
                width: AppConstants.buttonIconSize,
                height: AppConstants.buttonIconSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:it_project2025/core/theme/app_colors.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_theme.dart';

class NavigateToDiaryButton extends StatelessWidget {
  final VoidCallback onTap;

  const NavigateToDiaryButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppConstants.commonWidth,
        height: AppConstants.navigateToDiaryButtonHeight,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AppConstants.imageDiary),
            fit: BoxFit.fill,
          ),
          backgroundBlendMode: BlendMode.overlay,
          color: AppColors.black.withOpacity(0.36),
          borderRadius: BorderRadius.circular(AppConstants.cardBorderRadius),
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppConstants.commonPaddingHorizontal,
                vertical: AppConstants.commonPaddingVertical),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '지난 비행은 어떠셨나요?',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.diaryButtonTextColor,
                      ),
                ),
                Text(
                  'LHR / NYC',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.diaryButtonTextColor,
                      ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '비행일기 쓰러가기',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.diaryButtonTextColor,
                          ),
                    ),
                    SvgPicture.asset(
                      AppConstants.iconArrow,
                      width: AppConstants.buttonIconSize,
                      height: AppConstants.buttonIconSize,
                      colorFilter: const ColorFilter.mode(
                        AppColors.diaryButtonTextColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

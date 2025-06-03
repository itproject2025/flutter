import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_constants.dart';

class JetlagGuideWidget extends StatelessWidget {
  const JetlagGuideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          AppConstants.iconBeach,
          width: AppConstants.iconSizeXLarge,
          height: AppConstants.iconSizeXLarge,
        ),
        SizedBox(height: AppConstants.buttonPaddingVertical),
        Text(
          '시차 적응이 필요해요.\n휴식을 가져보는건 어떨까요?',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
        ),
      ],
    );
  }
}

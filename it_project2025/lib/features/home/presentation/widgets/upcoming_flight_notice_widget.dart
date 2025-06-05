import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_constants.dart';
import 'flight_model.dart';

class UpcomingFlightNoticeWidget extends StatelessWidget {
  final Flight? upcomingFlight;

  const UpcomingFlightNoticeWidget({
    super.key,
    this.upcomingFlight,
  });

  @override
  Widget build(BuildContext context) {
    if (upcomingFlight == null) {
      return SizedBox(
        width: AppConstants.commonWidth,
        child: Row(
          children: [
            SvgPicture.asset(
              AppConstants.iconClock,
              width: AppConstants.buttonIconSize,
              height: AppConstants.buttonIconSize,
            ),
            SizedBox(width: AppConstants.extraSmallPaddingHorizontal),
            Text(
              '아직 예정된 비행일정이 없어요.',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      );
    }
    return SizedBox(
      width: AppConstants.commonWidth,
      child: Row(
        children: [
          SvgPicture.asset(
            AppConstants.iconClock,
            width: AppConstants.buttonIconSize,
            height: AppConstants.buttonIconSize,
          ),
          SizedBox(width: AppConstants.extraSmallPaddingHorizontal),
          Text(
            '${upcomingFlight!.daysLeft}일 뒤 ${upcomingFlight!.destination}행 비행이 있어요.',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}

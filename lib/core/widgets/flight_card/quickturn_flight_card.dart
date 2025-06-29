import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/app_constants.dart';
import '../../models/flight_model.dart';
import '../../theme/app_colors.dart';

class QuickTurnFlightCard extends StatelessWidget {
  final Flight flight;

  const QuickTurnFlightCard({
    super.key,
    required this.flight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 헤더 (출발지 -> 도착지, 비행시간)
        _buildHeader(),
        SizedBox(height: AppConstants.commonPaddingVertical),
        Divider(color: Theme.of(context).colorScheme.outlineVariant),
        SizedBox(height: AppConstants.commonPaddingVertical),
        // Out port flight
        _buildFlightSection(
          context,
          label: 'Out port flight',
          date: flight.formattedDepartureDate,
          departureTime: flight.formattedDepartureTime,
          arrivalTime: flight.formattedArrivalTime,
          isOutbound: true,
        ),
        SizedBox(height: AppConstants.commonPaddingVertical),
        // home port flight
        _buildFlightSection(
          context,
          label: 'Home port flight',
          date: flight.formattedArrivalDate,
          departureTime: flight.formattedReturnDepartureTime,
          arrivalTime: flight.formattedReturnArrivalTime,
          isOutbound: false,
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Builder(
      builder: (context) => Row(
        children: [
          _buildDepartureAirportInfo(
            context,
            flight.departureCode,
            flight.countryFlagEmoji,
            flight.departureTemp,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  flight.flightNumber,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SvgPicture.asset(AppConstants.iconOneWay,
                    width: AppConstants.buttonIconSize,
                    height: AppConstants.buttonIconSize),
                Text(
                  flight.formattedFlightDuration,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ),
          _buildArrivalAirportInfo(
            context,
            flight.arrivalCode,
            flight.arrivalCountryFlagEmoji,
            flight.arrivalTemp,
          ),
        ],
      ),
    );
  }

  Widget _buildDepartureAirportInfo(
      BuildContext context, String code, String flag, int temperature) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          AppConstants.iconDiary,
          width: AppConstants.cardFlagWidth,
          height: AppConstants.cardFlagHeight,
        ),
        Text(
          code,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(height: AppConstants.extraSmallPaddingVertical),
        Row(
          children: [
            // TODO : 날씨 이모지로 변경
            Icon(
              Icons.thermostat,
              size: AppConstants.iconSizeSmall,
            ),

            Text(
              '$temperature°C',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildArrivalAirportInfo(
      BuildContext context, String code, String flag, int temperature) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SvgPicture.asset(
          AppConstants.iconDiary,
          width: AppConstants.cardFlagWidth,
          height: AppConstants.cardFlagHeight,
        ),
        Text(
          code,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(height: AppConstants.extraSmallPaddingVertical),
        Row(
          children: [
            // TODO : 날씨 이모지로 변경
            Icon(
              Icons.thermostat,
              size: AppConstants.iconSizeSmall,
            ),

            Text(
              '$temperature°C',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFlightSection(
    BuildContext context, {
    required String label,
    required String date,
    required String departureTime,
    required String arrivalTime,
    required bool isOutbound,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        SizedBox(height: AppConstants.extraSmallPaddingVertical),
        Row(
          children: [
            // 출발 시간
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    departureTime,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),

            if (!isOutbound)
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstants.smallPaddingHorizontal,
                      vertical: AppConstants.extraSmallPaddingVertical),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                    borderRadius:
                        BorderRadius.circular(AppConstants.buttonBorderRadius),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.outline,
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadowLight,
                        blurRadius: AppConstants.navShadowBlur,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const ShapeDecoration(
                            color: AppColors.quickTurnBlue,
                            shape: OvalBorder(),
                          ),
                        ),
                        SizedBox(
                            width: AppConstants.extraSmallPaddingHorizontal),
                        Text(
                          'Quick Turn',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ])),

            // 도착 시간
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    date,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    arrivalTime,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

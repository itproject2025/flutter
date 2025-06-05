import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/app_constants.dart';
import '../../models/flight_model.dart';
import '../../theme/app_colors.dart';

class LayOverFlightCard extends StatelessWidget {
  final Flight flight;

  const LayOverFlightCard({
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
        // 단일 비행 정보
        _buildFlightInfo(context),
      ],
    );
  }

  Widget _buildHeader() {
    return Builder(
      builder: (context) => Row(
        children: [
          // 출발지
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

          // 도착지
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

  Widget _buildFlightInfo(BuildContext context) {
    return Row(
      children: [
        // 출발 시간
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                flight.formattedDepartureDate,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                flight.formattedDepartureTime,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),

        // Layover 표시
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
                      color: AppColors.layOverPink,
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(width: AppConstants.extraSmallPaddingHorizontal),
                  Text(
                    'Layover',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ])),

        // 도착 시간
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                flight.formattedArrivalDate,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                flight.formattedArrivalTime,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

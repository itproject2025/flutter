import 'package:flutter/material.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/flight_card/flight_card.dart';
import '../../../../core/models/flight_model.dart';

class FlightCardTestWidget extends StatelessWidget {
  const FlightCardTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Quick Turn 샘플
        FlightCard(
          flight: _getQuickTurnSample(),
          onTap: () {
            print('Quick Turn Flight tapped');
          },
        ),
        SizedBox(height: AppConstants.commonPaddingVertical),
        // Layover 샘플
        FlightCard(
          flight: _getLayoverSample(),
          onTap: () {
            print('Layover Flight tapped');
          },
        ),
      ],
    );
  }

  Flight _getQuickTurnSample() {
    final departureTime = DateTime(2025, 3, 12, 10, 50);
    final arrivalTime = DateTime(2025, 3, 12, 13, 0);
    final returnDepartureTime = DateTime(2025, 3, 12, 14, 20);
    final returnArrivalTime = DateTime(2025, 3, 12, 16, 30);

    return Flight(
      departureCode: 'ICN',
      arrivalCode: 'NRT',
      departureCountryCode: 'KR',
      arrivalCountryCode: 'JP',
      departureTemp: 18,
      arrivalTemp: 24,
      departureTime: departureTime,
      arrivalTime: arrivalTime,
      flightNumber: 'KE756',
      flightDuration: const Duration(hours: 2, minutes: 20),
      pattern: FlightPattern.quickTurn,
      returnDepartureTime: returnDepartureTime,
      returnArrivalTime: returnArrivalTime,
    );
  }

  Flight _getLayoverSample() {
    final departureTime = DateTime(2025, 3, 12, 10, 50);
    final arrivalTime = DateTime(2025, 3, 12, 21, 40);

    return Flight(
      departureCode: 'LHR',
      arrivalCode: 'NRT',
      departureCountryCode: 'GB',
      arrivalCountryCode: 'JP',
      departureTemp: 18,
      arrivalTemp: 24,
      departureTime: departureTime,
      arrivalTime: arrivalTime,
      flightNumber: 'KE756',
      flightDuration: const Duration(hours: 10, minutes: 50),
      pattern: FlightPattern.layover,
    );
  }
}

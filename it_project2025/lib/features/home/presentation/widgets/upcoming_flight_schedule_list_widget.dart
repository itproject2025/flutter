import 'package:flutter/material.dart';
import '../../../../core/constants/app_constants.dart';
import 'flight_model.dart';

class UpcomingFlightScheduleListWidget extends StatelessWidget {
  final List<Flight> flights;

  const UpcomingFlightScheduleListWidget({
    super.key,
    required this.flights,
  });

  @override
  Widget build(BuildContext context) {
    if (flights.isEmpty) return const SizedBox.shrink();
    return Column(
      children: [
        ...flights.take(3).map((flight) => FlightCard(flight: flight)),
        SizedBox(height: AppConstants.mediumPaddingVertical),
      ],
    );
  }
}

class FlightCard extends StatelessWidget {
  final Flight flight;

  const FlightCard({
    super.key,
    required this.flight,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

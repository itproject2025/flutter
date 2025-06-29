import 'package:flutter/material.dart';
import '../../constants/app_constants.dart';
import '../../models/flight_model.dart';
import 'quickturn_flight_card.dart';
import 'layover_flight_card.dart';

class FlightCard extends StatelessWidget {
  final Flight flight;
  final VoidCallback? onTap;

  const FlightCard({
    super.key,
    required this.flight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: AppConstants.cardMarginHorizontal,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(AppConstants.cardBorderRadius),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.cardPaddingHorizontal,
          vertical: AppConstants.cardPaddingVertical,
        ),
        child: _buildCardContent(),
      ),
    );
  }

  Widget _buildCardContent() {
    switch (flight.pattern) {
      case FlightPattern.quickTurn:
        return QuickTurnFlightCard(flight: flight);
      case FlightPattern.layover:
        return LayOverFlightCard(flight: flight);
    }
  }
}

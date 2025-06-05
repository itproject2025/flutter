import 'package:flutter/material.dart';
import '../../../../core/constants/app_constants.dart';
import '../widgets/jetlag_guide_widget.dart';
import '../widgets/upcoming_flight_notice_widget.dart';
import '../widgets/upcoming_flight_schedule_list_widget.dart';
import '../widgets/navigate_to_calendar_button.dart';
import '../widgets/flight_model.dart';
import '../widgets/flight_card_test_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO : 나중에 삭제
    final List<Flight> flights = [];
    final Flight? upcomingFlight = flights.isNotEmpty ? flights.first : null;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ],
            stops: AppConstants.homeScreenGradients,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    MediaQuery.of(context).padding.bottom,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: AppConstants.homeScreenPaddingTop,
                      bottom: AppConstants.homeScreenPaddingBottom),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const JetlagGuideWidget(),
                      SizedBox(height: AppConstants.homeScreenPaddingTop),
                      UpcomingFlightNoticeWidget(
                          upcomingFlight: upcomingFlight),
                      SizedBox(height: AppConstants.smallPaddingVertical),
                      UpcomingFlightScheduleListWidget(flights: flights),
                      NavigateToCalendarButton(onTap: () {
                        // TODO: 캘린더 이동 로직 추가
                      }),
                      const FlightCardTestWidget(),
                      // TODO : 비행일기 추가 버튼 추가 & 비행일기 없을 때 분기 처리
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

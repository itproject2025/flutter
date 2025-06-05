enum FlightPattern { quickTurn, layover }

class Flight {
  final String departureCode;
  final String arrivalCode;
  final String departureCountryCode; // 국기 표시용
  final String arrivalCountryCode; // 국기 표시용
  final int departureTemp;
  final int arrivalTemp;
  final DateTime departureTime;
  final DateTime arrivalTime;
  final String flightNumber;
  final Duration flightDuration;
  final FlightPattern pattern;

  // Quick Turn 전용 필드
  final DateTime? returnDepartureTime;
  final DateTime? returnArrivalTime;

  const Flight({
    required this.departureCode,
    required this.arrivalCode,
    required this.departureCountryCode,
    required this.arrivalCountryCode,
    required this.departureTemp,
    required this.arrivalTemp,
    required this.departureTime,
    required this.arrivalTime,
    required this.flightNumber,
    required this.flightDuration,
    required this.pattern,
    this.returnDepartureTime,
    this.returnArrivalTime,
  });

  // 시간 포맷 반환
  // TODO : 백엔드 협의 후 수정

  String get formattedDepartureTime {
    return '${departureTime.hour.toString().padLeft(2, '0')}:${departureTime.minute.toString().padLeft(2, '0')}';
  }

  String get formattedArrivalTime {
    return '${arrivalTime.hour.toString().padLeft(2, '0')}:${arrivalTime.minute.toString().padLeft(2, '0')}';
  }

  String get formattedReturnDepartureTime {
    if (returnDepartureTime == null) return '';
    return '${returnDepartureTime!.hour.toString().padLeft(2, '0')}:${returnDepartureTime!.minute.toString().padLeft(2, '0')}';
  }

  String get formattedReturnArrivalTime {
    if (returnArrivalTime == null) return '';
    return '${returnArrivalTime!.hour.toString().padLeft(2, '0')}:${returnArrivalTime!.minute.toString().padLeft(2, '0')}';
  }

  String get formattedDepartureDate {
    return '${departureTime.year}.${departureTime.month.toString().padLeft(2, '0')}.${departureTime.day.toString().padLeft(2, '0')}';
  }

  String get formattedArrivalDate {
    return '${arrivalTime.year}.${arrivalTime.month.toString().padLeft(2, '0')}.${arrivalTime.day.toString().padLeft(2, '0')}';
  }

  String get formattedFlightDuration {
    final hours = flightDuration.inHours;
    final minutes = flightDuration.inMinutes % 60;
    return '${hours}h ${minutes}m';
  }

  String get countryFlagEmoji {
    // TODO : 국가 코드를 국기 이모지로 변환
    return "🇰🇷";
  }

  String get arrivalCountryFlagEmoji {
    // TODO : 국가 코드를 국기 이모지로 변환
    return "🇰🇷";
  }
}

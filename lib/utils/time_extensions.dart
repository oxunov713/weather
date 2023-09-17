enum WeekDay {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const WeekDay(this.dayName);
  final String dayName;
}

enum MothName {
  january("January"),
  february("February"),
  march("March"),
  april("April"),
  may("May"),
  june("June"),
  july("July"),
  august("August"),
  september("September"),
  october("October"),
  november("November"),
  december("December");

  const MothName(this.monthName);
  final String monthName;
}

extension TimeExtension on DateTime {
  String get weekMonthDay {
    /// weekday -> starts with monday equal to 1,
    /// ends Sunday equal to 7
    final week = WeekDay.values[weekday - 1].dayName.substring(0, 3);

    /// weekday -> starts with January equal to 1,
    /// ends December equal to 12
    final m = MothName.values[month - 1].monthName.substring(0, 3);

    return "$week, $m $day";
  }
}
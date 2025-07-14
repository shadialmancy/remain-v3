class DateTimeExtension {
  DateTime parseDateString(String dateString) {
    List<String> parts = dateString.split(' ');
    List<String> dateParts = parts[0].split('-');
    List<String> timeParts = parts[1].split(':');

    int year = int.parse(dateParts[0]);
    int month = int.parse(dateParts[1]);
    int day = int.parse(dateParts[2]);

    int hour = int.parse(timeParts[0]);
    int minute = int.parse(timeParts[1]);

    if (parts[2] == 'PM' && hour != 12) {
      hour += 12;
    } else if (parts[2] == 'AM' && hour == 12) {
      hour = 0;
    }

    return DateTime(year, month, day, hour, minute);
  }

  static bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}

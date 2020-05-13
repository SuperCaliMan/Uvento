class CalendarOneWeek {
  DateTime _dateTime;
  List<DateTime> _week = List<DateTime>();

  CalendarOneWeek(this._dateTime) {
    _dateTime = _findMonday(_dateTime);
    for (var i = 0; i <= 6; i++) {
      _week.add(_dateTime);
      _dateTime = _dateTime.add(new Duration(days: 1));
    }
  }

  DateTime _findMonday(DateTime dateTime) {
    while (dateTime.weekday != DateTime.sunday) {
      dateTime = dateTime.subtract(new Duration(days: 1));
      print(dateTime.toIso8601String());
    }
    return dateTime;
  }

  DateTime getWeek(int index) {
    return _week[index];
  }

  getSize() {
    return _week.length;
  }
}

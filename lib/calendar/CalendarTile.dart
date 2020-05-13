import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uvento/calendar/tap.dart';

class CalendarTile extends StatelessWidget {
  final DateTime date;
  final Color selectionColor;
  final DateFormat _formatter = DateFormat('E');
  final DataSelectionCallBack onDateSelected;
  final TextStyle style;

  CalendarTile(
      {@required this.date,
      @required this.selectionColor,
      this.style,
      this.onDateSelected});

  void onTapDate() {
    if (onDateSelected != null) {
      onDateSelected(this.date);
      print("Selected date: ${this.date.toIso8601String()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
            onTap: () => onTapDate(),
            child: Container(
              width: 55,
              height: 80,
              color: selectionColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    date.day.toString(),
                    style: style,
                  ),
                  SizedBox(
                    height: 16,
                    width: 55,
                  ),
                  Text(
                    _formatter.format(date),
                    style: style,
                  )
                ],
              ),
            )));
  }
}

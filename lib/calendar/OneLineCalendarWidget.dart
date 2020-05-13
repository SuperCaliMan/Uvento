import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uvento/MyColor.dart';
import 'package:uvento/calendar/CalendarTile.dart';
import 'package:uvento/calendar/tap.dart';
import 'package:uvento/model/CalendarOneWeek.dart';

class OneLineCalendarWidget extends StatefulWidget {
  DataSelectionCallBack dataSelectionCallBack;

  OneLineCalendarWidget({this.dataSelectionCallBack});

  @override
  _OneLineCalendarWidgetState createState() =>
      _OneLineCalendarWidgetState(dataSelectionCallBack);
}

class _OneLineCalendarWidgetState extends State<OneLineCalendarWidget> {
  DataSelectionCallBack dataSelectionCallBack;
  CalendarOneWeek _week = new CalendarOneWeek(new DateTime.now());
  DateTime _selectDate = DateTime.now();
  bool _isSelected = false;
  var list = List<Widget>();

  _OneLineCalendarWidgetState(this.dataSelectionCallBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      margin: EdgeInsets.only(left: 10, right: 10, top: 25),
      child: ListView.builder(
        itemBuilder: (context, index) {
          DateTime _date = _week.getWeek(index);
          _isSelected = _selectDate != null &&
              _selectDate.day == _date.day &&
              _selectDate.month == _date.month;

          return Padding(
            padding: const EdgeInsets.only(right: 4),
            child: CalendarTile(
              date: _week.getWeek(index),
              onDateSelected: (selectDate) {
                dataSelectionCallBack(selectDate);
                setState(() {
                  _selectDate = selectDate;
                });
              },
              selectionColor:
                  _isSelected ? MyColor.yellowCalendarBg : Colors.transparent,
              style: _isSelected
                  ? TextStyle(color: Colors.black, fontFamily: 'Muli Bold')
                  : TextStyle(color: Colors.white, fontFamily: 'Muli Regular'),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: _week.getSize(),
      ),
    );
  }
}

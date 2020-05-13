import 'package:flutter/material.dart';
import 'package:uvento/model/Event.dart';
import 'package:uvento/model/EventsList.dart';
import 'package:uvento/popularEvents/PopularEventTile.dart';

class PopularEventListWidget extends StatelessWidget {
  DateTime _date;
  List<Event> _eventsList = EventsList.getEvents();

  PopularEventListWidget(this._date);

  @override
  Widget build(BuildContext context) {
    var _tempList = List<Event>();
    for (var d in _eventsList) {
      if (d.dateTime.day == _date.day &&
          d.dateTime.month == _date.month &&
          d.dateTime.year == _date.year) {
        _tempList.add(d);
      }
    }
    _eventsList.clear();
    _eventsList.addAll(_tempList);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            "Popular Events",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'Muli Regular'),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.4,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return PopularEventTile(_eventsList[index]);
              },
              itemCount: _eventsList.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
            )),
      ],
    );
  }
}
